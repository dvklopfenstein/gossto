/*This file is part of GOSSTO.
 GOSSTO is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 GOSSTO is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with GOSSTO.  If not, see <http://www.gnu.org/licenses/>.
 */
package ISM;

import GOtree.GOTerm;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.math3.linear.OpenMapRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import util.TinyLogger;

/**
 *
 * @author Samuel Heron
 */
//Contains the instructions for running GOSSTO, remove this class to use GOSSTO as a library
public class ISM {

    /**
     * Interface object interacts with the user
     */
    private TerminalInterface ui;
    /**
     * Name of the OBO file which contains the Gene Ontology used
     */
    private String oboFile;
    /**
     * Name of the GOA file (annotations) used to assign functions to genes
     */
    private String goaFile;
    /**
     * Name of the Host Similarity measure used
     */
    private String hsmChoice;
    /**
     * Names of the ontologies used to compute the HSMs (and possibly ISMs)
     */
    private String dagChoice;
    /**
     * Name of the file where the HSM is written
     */
    private String hsmFileName;
    /**
     * Name of the file where the ISM is written
     */
    private String ismFileName;
    /**
     * Relations in the Gene Ontology which are used to up-propagate
     */
    private String[] chosenRelations;
    /**
     * Gene identifiers
     */
    private String[] geneIDs;
    /**
     * specific set of GO terms that are to be used in the execution (strings)
     */
    private String[] goIDs;
    /**
     * List of evidence codes considered in the GOA file
     */
    private String[] evidenceCodes;
    /**
     * Tells whether the ISM is going to be computed or not
     */
    private boolean isIsmToBeComputed;
    /**
     * Tells whether the measure is computed termwise
     */
    private boolean termWise;
    /**
     *
     */
    private boolean weightedJaccard;
    /**
     * Utilities to make the strings validation
     */
    IoValidation validator;
    /**
     * Logger used to output messages
     */
    TinyLogger logger;
    /**
     * Stores the execution parameters to write them at the top of the output
     * files
     */
    private ArrayList<String> notes;

    /**
     * Empty constructor
     */
    public ISM() throws FileNotFoundException {
        validator = new IoValidation(); //input validator.
        logger = new TinyLogger();
        validator.setLogger(logger);
        this.ui = new TerminalInterface();
        ui.welcomer(); //Prints welcome note & GNU GPL info
    }

    /**
     * Validates parameters given to the ISM application, either in the terminal
     * or via the prompt
     *
     * @param args arguments given in the command line to the program
     */
    private void validateParameters(String args[]) throws FileNotFoundException, IOException {
        ParameterValidator paramValidator;

        if (args.length > 0) //If any console parameters entered:
        {
            paramValidator = new ConsoleParameterValidator(args);
            paramValidator.validate(this.validator, this.logger);
            this.setParametersConsole(paramValidator);

        } else //Request Parameters using prompt system
        {
            paramValidator = new PromptParameterValidator(ui);
            paramValidator.validate(this.validator, this.logger);
            this.setParametersPrompt(paramValidator);
        }

        this.logger.log("All parameters validated, except GO terms");
    }

    private void setParametersConsole(ParameterValidator validator) {
        oboFile = validator.getOboFile();
        goaFile = validator.getGoaFile();
        hsmChoice = validator.getHsmChoice();
        dagChoice = validator.getDagChoice();
        hsmFileName = validator.getHsmFileName();
        ismFileName = validator.getIsmFileName();
        chosenRelations = validator.getChosenRelations();
        geneIDs = validator.getGeneIDs();
        goIDs = validator.getGoIDs();
        evidenceCodes = validator.getEvidenceCodes();
        notes = validator.getNotes();
        this.isIsmToBeComputed = validator.isIsmChoice();
        this.termWise = validator.isTermWise();
        this.weightedJaccard = validator.isWeightedJaccard();
    }

    private void setParametersPrompt(ParameterValidator validator) {
        this.setParametersConsole(validator);
    }

    /**
     * Imports the GO tree from file
     *
     * @return a GOtree_interfacer object with all the GO tree data
     */
    private GOtreeInterfacer importGOTree() throws FileNotFoundException, IOException {

        logger.showMessage("#####Importing GO & Annotation Data#####");
        int propagationStrategy = 1; //Choice of propagation strategy, 1 as default, never changed.
        GOtreeInterfacer gti = new GOtreeInterfacer(this.oboFile, this.goaFile, this.chosenRelations, this.evidenceCodes, propagationStrategy, this.dagChoice, this.logger);
        logger.log("GOtree_Interfacer instantiated & executed");
        return gti;
    }

    /**
     * Returns the matrix axis (a structure where the GO terms are organised by
     * ontology) from the GO tree interfacer
     *
     * @param gti GO tree data imported by the previous step
     * @return a matrix of GO terms (adjacencies) where the first dimension is
     * one of each three ontologies (BP, MF, CC) and the second the list of
     * terms
     */
    private static GOTerm[][] getMatrixAxis(GOtreeInterfacer gti) {
        GOTerm[][] matrixAxis = new GOTerm[3][];
        matrixAxis[0] = gti.getBPaxis(); //fetch adjacency matrix axis
        matrixAxis[1] = gti.getMFaxis();
        matrixAxis[2] = gti.getCCaxis();

        return matrixAxis;
    }

    /**
     * Validates the GO terms
     *
     * @param matrixAxis matrix axis imported by the previous step
     * @return list of interesting GO term object considered by the user which
     * are going to be used to reduce the dimensionality of the matrices (might
     * be empty)
     */
    private ArrayList<GOTerm> validateGOTerms(GOTerm[][] matrixAxis) throws IOException {

        // converts chosen this.goIDs (if any) from Strings to a list of GO terms 
        // and validate them simultaneously
        ArrayList<GOTerm> goIDsAsGOTerm = new ArrayList<GOTerm>();
        if (this.goIDs != null) {
            for (String id : this.goIDs) {
                SEARCHING:
                for (int m = 0; m < 3; m++) {
                    for (int i = 0; i < matrixAxis[m].length; i++) {
                        if (id.equals(matrixAxis[m][i].getGOid())) {
                            goIDsAsGOTerm.add(matrixAxis[m][i]);
                            break SEARCHING;
                        }
                    }
                }
            }
            if (this.goIDs.length != goIDsAsGOTerm.size()) {
                logger.logAndCloseWriter("############ ERROR: Invalid GOTerms found");
                System.err.println("ERROR: One or more goterm IDs entered does not exist");
                System.exit(-1);
            }
        }

        logger.log("Terms validated");
        return goIDsAsGOTerm;
    }

    /**
     * Contains the main running instructions for the program, takes console
     * parameters as an array of strings.
     */
    public static void main(String[] argz) {
        try {

            //#####Proper Running of Program#####
            ISM ism = new ISM();


            String selectedEVCodes = "EXP,IDA,IPI,IMP,IGI,IEP,ISS,ISO,ISA,ISM,IGC,IBA,IBD,IKR,IRD,RCA,TAS,NAS";


            String args[] = {"-obopath", "current.obo", "-goapath",
                "gene_association.sgd", "-relations", "is_a,part_of",
                "-evidencecodes", selectedEVCodes,
                "-hsm", "Resnik", "-ontology", "all",
                "-calculationtype", "ism", "-calculationdata", "genewise",
                "-hsmoutput", "hsm_output", "-ismoutput", "ism_output", "-terms",
                "all", "-weightedJaccard", "false"};

            // 1.- the parameters are validated
            ism.validateParameters(args);

            // 2.- the GO tree is imported and validated wrt annotation files
            GOtreeInterfacer gti = ism.importGOTree();
            GOTerm[][] matrixAxis = getMatrixAxis(gti);
            ArrayList<GOTerm> goTerms = ism.validateGOTerms(matrixAxis);

            // 3.- the semantic similarities are computed and written to disk
            ism.computeAndWriteSemanticSimilarities(gti, matrixAxis, goTerms);

            // 4.- Say goodbye!
            ism.farewell();

        } catch (Exception ex) {
            ex.printStackTrace(System.err);
        }
    }

    private void computeAndWriteSemanticSimilarities(GOtreeInterfacer gti, GOTerm[][] matrixAxis, ArrayList<GOTerm> goIDsAsGOTerm) throws IOException {

        // 1.- we compute the adjacency matrices for each Ontology.
        // the "adjacency" is a matrix that, for each (numeric) GO term id,
        // tells us which GO term are its "parents" following the required
        // relationships (is_a, part_of, ...) that were said to be parsed in the
        // program options
        OpenMapRealMatrix[] adjacencies = new OpenMapRealMatrix[3];
        adjacencies[0] = gti.getBPAdjacencyMatrix(); //fetch adjacency matrices
        adjacencies[1] = gti.getMFAdjacencyMatrix();
        adjacencies[2] = gti.getCCAdjacencyMatrix();

        // 2.- HSM computation       

        // 2.1.- Builds an HSM interfacer (to abstract the different HSMs)
        Object[] params = generateParameters(gti, matrixAxis, adjacencies, goIDsAsGOTerm, validator);
        HSMInterfacer hsmi = buildsHSMInterfacer(params, new HashSet<GOTerm>(goIDsAsGOTerm), matrixAxis);
        hsmi.retrieveHSMinstance(this.hsmChoice, params);

        // 2.2.- Iterate and make the whole process for every desired ontology
        int loopVars[] = this.setLoopVars(dagChoice, logger);
        for (int ontology = loopVars[0]; ontology < loopVars[1]; ontology++) {
            // for each ontology...
            // (a) compute HSM
            logger.showMessage("##### Computing HSM (" + new String[]{"BP", "MF", "CC"}[ontology] + ") #####");
            RealMatrix hsmResults;

            String genesRows[] = null;

            if (this.termWise) {
                // compute HSM term-wise
                hsmResults = hsmi.returnTermWiseResults(ontology);
            } else {
                hsmResults = hsmi.returnGeneWiseResults(ontology);
                if (this.geneIDs != null) {
                    genesRows = this.geneIDs;
                } else {
                    genesRows = hsmi.getComputedGenes();
                }
            }


            logger.log("HSM calculated");

            // (b) we print the results of the HSM to a file...            
            logger.showMessage("##### Printing HSM Results to File (" + new String[]{"BP", "MF", "CC"}[ontology] + ") #####");
            validator.printResultsToFile(ontology, hsmResults, matrixAxis, this.hsmFileName, this.notes, goIDsAsGOTerm, genesRows);

            // (c) if we are to compute an ISM...
            if (this.isIsmToBeComputed) {
                // (d) we compute it

                ISMInterfacer ism = new ISMInterfacer();

                logger.showMessage("##### Computing ISM (" + new String[]{"BP", "MF", "CC"}[ontology] + ") #####");
                RealMatrix ismResults;
                if (this.termWise) {
                    // compute ISM term-wise
                    ismResults = ism.getISMs(adjacencies, matrixAxis, hsmResults, gti.getResults(), goIDsAsGOTerm, chosenRelations, dagChoice, ontology, logger);
                } else {
                    // compute ISM gene-wise
                    ismResults = ism.getGeneISMs(adjacencies, matrixAxis, hsmResults, gti.getResults(), goIDsAsGOTerm, chosenRelations, dagChoice, ontology, logger, this.weightedJaccard);
                }

                // and we print the results of the HSM to a file...            
                logger.showMessage("##### Printing ISM Results to File (" + new String[]{"BP", "MF", "CC"}[ontology] + ") #####");
                validator.printResultsToFile(ontology, ismResults, matrixAxis, this.ismFileName, this.notes, goIDsAsGOTerm, genesRows);
            }

        }
    }

    /**
     * Builds the HSM interfacer
     *
     * @param params set of parameters passed to the HSM interfacer
     * @return the HSMInterfacer object which has been built
     */
    private HSMInterfacer buildsHSMInterfacer(Object[] params, Set<GOTerm> targets, GOTerm[][] matrixAxis)
            throws IOException {
        //initialise the HSM interfacer
        HSMInterfacer hsmi = new HSMInterfacer(logger, targets, matrixAxis);
        logger.log("HSM_Interfacer instantiated");

        //initialise an instance of the required HSM method
        return hsmi;
    }

    private Object[] generateParameters(GOtreeInterfacer gti, GOTerm[][] matrixAxis, OpenMapRealMatrix[] adjacencies, ArrayList<GOTerm> goIDsAsGOTerm, IoValidation validate) {
        //Create array of all GO terms
        GOTerm[] allterms = new GOTerm[matrixAxis[0].length + matrixAxis[1].length + matrixAxis[2].length];
        int counter = 0;
        for (int i = 0; i < 3; i++) {
            for (GOTerm go : matrixAxis[i]) {
                allterms[counter] = go;
                counter++;
            }
        }
        //set parameters for the HSMs
        Object[] params = new Object[]{allterms, gti.getGeneIDs(), gti.getGoIdsByGene(), matrixAxis, this.geneIDs, gti.getResults(), this.chosenRelations, this.logger}; //ALTERABLE PARAMETERS
        return params;
    }

    /**
     * Checks the choice of ontology; 'dagChoice' is acceptable, the 'log'
     * boolean variable refers to if a log file is being written & whether to
     * write any necessary information to it. This same use applies to the same
     * parameter in other methods of this class
     */
    private int[] setLoopVars(String dagChoice, TinyLogger logger) throws IOException {
        int[] loopVars = new int[2];
        if (dagChoice.compareToIgnoreCase("all") == 0) {
            loopVars[0] = 0;
            loopVars[1] = 3;
        } else if (dagChoice.compareToIgnoreCase("bp") == 0) {
            loopVars[0] = 0;
            loopVars[1] = 1;
        } else if (dagChoice.compareToIgnoreCase("mf") == 0) {
            loopVars[0] = 1;
            loopVars[1] = 2;
        } else if (dagChoice.compareToIgnoreCase("cc") == 0) {
            loopVars[0] = 2;
            loopVars[1] = 3;
        } else {
            logger.logAndCloseWriter("#######ERROR: Choice of Ontology Invalid");
            System.err.println("ERROR: Choice of Ontology Invalid");
            System.exit(-1);
        }
        return loopVars;
    }

    private void farewell() throws IOException {
        ui.farewell();
        this.logger.log("All printing done");
        this.logger.logAndCloseWriter("Finished");
    }
}
