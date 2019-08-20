./AnnotationFileUtilities/AnnotationFileStrategy.java: public interface AnnotationFileStrategy {
./AnnotationFileUtilities/AnnotationFileWithExternalProteinIds.java: public class AnnotationFileWithExternalProteinIds implements AnnotationFileStrategy {
./AnnotationFileUtilities/AnnotationFileWithExternalProteinIds.java:     public void setProteinIdentifiers(Set<String> ids) {
./AnnotationFileUtilities/AnnotationFileWithExternalProteinIds.java:     public Set<String> getSetOfUnParsedProteins() {
./AnnotationFileUtilities/AnnotationFileWithExternalProteinIds.java:     public String getProteinByField(String[] fields) {
./AnnotationFileUtilities/AnnotationFileWithExternalProteinIds.java:     public boolean proteinIdIsValid(String[] fieldsGOAnnotation) {
./AnnotationFileUtilities/AnnotationFileWithExternalProteinIds.java:     public String getProteinId(String[] fieldsGOAnnotation) {
./AnnotationFileUtilities/AnnotationFileWithoutExternalProteinIds.java: public class AnnotationFileWithoutExternalProteinIds implements AnnotationFileStrategy {
./AnnotationFileUtilities/AnnotationFileWithoutExternalProteinIds.java:     public static void setUseUniProtIds(boolean useUniProtIds) {
./AnnotationFileUtilities/AnnotationFileWithoutExternalProteinIds.java:     public void setProteinIdentifiers(Set<String> ids) {
./AnnotationFileUtilities/AnnotationFileWithoutExternalProteinIds.java:     public Set<String> getSetOfUnParsedProteins() {
./AnnotationFileUtilities/AnnotationFileWithoutExternalProteinIds.java:     public boolean proteinIdIsValid(String[] fieldsGOAnnotation) {
./AnnotationFileUtilities/AnnotationFileWithoutExternalProteinIds.java:     public String getProteinId(String[] fieldsGOAnnotation) {

./GOtree/AnnotationFile.java: public class AnnotationFile {
./GOtree/AnnotationFile.java:     private final static Set<String> experimentalCodes = new HashSet<String>(Arrays.asList(new String[]{"EXP", "IDA", "IPI", "IMP", "IGI", "IEP", "TAS", "IC"}));
./GOtree/AnnotationFile.java:     private final static Set<String> allCodesButIEA = new HashSet<String>(Arrays.asList(new String[]{"EXP", "IDA", "IPI", "IMP", "IGI", "IEP", "TAS", "IC", "ISS", "ISO", "ISA", "ISM", "IGC", "IBA", "IBD", "IKR", "IRD", "RCA", "NAS", "ND"}));
./GOtree/AnnotationFile.java:     private final static Set<String> allCodes = new HashSet<String>(Arrays.asList(new String[]{"EXP", "IDA", "IPI", "IMP", "IGI", "IEP", "TAS", "IC", "ISS", "ISO", "ISA", "ISM", "IGC", "IBA", "IBD", "IKR", "IRD", "RCA", "NAS", "ND", "IEA", "NR"}));
./GOtree/AnnotationFile.java:     public void setProteinIdentifiers(Set<String> proteinIds) {
./GOtree/AnnotationFile.java:     private Set<String> getSetOfEvidenceCodes(int evidenceCodes) {
./GOtree/AnnotationFile.java:     private Assignment readFromFile(String fileName, final Set<String> validEvicenceCodes) throws FileNotFoundException, IOException {
./GOtree/AnnotationFile.java:     public Set<String> getUnparsedProteins() {
./GOtree/AnnotationFile.java:     public static void useUniProtIds(boolean val) {
./GOtree/AnnotationFile.java:     public Assignment readAnnotationFileWithProteinIdentifiers(String fileName, Set<String> proteinIds, int evidenceCodes) throws IOException, FileNotFoundException {
./GOtree/AnnotationFile.java:     public Assignment readAnnotationFile(String fileName) throws IOException, FileNotFoundException {
./GOtree/AnnotationFile.java:     public Assignment readAnnotationFile(String fileName, String[] evidenceCodes) throws IOException, FileNotFoundException {

./GOtree/Assignment.java: public class Assignment {
./GOtree/Assignment.java:     public double getMax() {
./GOtree/Assignment.java:     public static Assignment linearCombine(final Assignment a1, double alpha1, final Assignment a2, double alpha2) {
./GOtree/Assignment.java:     public boolean containsProtein(String proteinId) {
./GOtree/Assignment.java:     public Assignment(final Assignment other) {
./GOtree/Assignment.java:     public double getScoreForProteinAndGOterm(String protein, String GOTerm) {
./GOtree/Assignment.java:     public Assignment clone() {
./GOtree/Assignment.java:     public void addProtein(final String proteinName) {
./GOtree/Assignment.java:     public Assignment filterBySetOfGOTerms(final Set<String> validGOTerms) {
./GOtree/Assignment.java:     public void setValue(final String protein, final String goTerm, final double value) {
./GOtree/Assignment.java:     public Assignment multiplyValuesByScalar(final double scalar) {
./GOtree/Assignment.java:     public Set<String> getProteinsForGOTerm(final String goTermId) {
./GOtree/Assignment.java:     public Set<String> getRowIdentifiers() {
./GOtree/Assignment.java:     public Map<Integer, Double> getRow(final String rowId) {
./GOtree/Assignment.java:     public Set<String> getColumnIdentifiers() {
./GOtree/Assignment.java:     public Assignment add(Assignment other) {
./GOtree/Assignment.java:      public Matrix getMatrixAndGetRowColIds(List<String> protIds, List<String> goTermIds) {
./GOtree/Assignment.java:      public Matrix getMatrix(List<String> geneIds) {
./GOtree/Assignment.java:      public Matrix getMatrix() {
./GOtree/Assignment.java:     public int countNumberOfGenesForGOTerm(final String goTermId) {
./GOtree/Assignment.java:     public Map<String, Double> getGOTermScoresForProteinId(final String proteinId) {
./GOtree/Assignment.java:     public Assignment getFilteredVersionOnlyWithTermsAnnotatingBetweenMinMaxGenes(final int min, final int max) {
./GOtree/Assignment.java:     public int sizeGenes() {
./GOtree/Assignment.java:     public int sizeTerms() {
./GOtree/Assignment.java:     public String getGeneFromId(final int untranslatedIdRow) {
./GOtree/Assignment.java:     public String getGOTermFromId(final int untranslatedIdCol) {
./GOtree/Assignment.java:     public void readFromSeedFile(String inputFileName) throws IOException, NumberFormatException {
./GOtree/Assignment.java:     public void writeSeedFile(String outputFileName) throws IOException {

./GOtree/GeneOntology.java: public class GeneOntology { //extends Singleton {
./GOtree/GeneOntology.java:     public boolean isNonObsolete(String id) {
./GOtree/GeneOntology.java:     public GOTerm getTermById(String id) {
./GOtree/GeneOntology.java:     public void putTermById(GOTerm term, String id) {
./GOtree/GeneOntology.java:     public List<GOTerm> getSynonyms(String goTermId) {
./GOtree/GeneOntology.java:     public void addSynonymForTerm(String obsoleteTerm, String alternativeTerm) {
./GOtree/GeneOntology.java:     public void addSynonymForTerm(String originalId, String synonymId) {
./GOtree/GeneOntology.java:     public boolean hasOntology(String ontologyName) {
./GOtree/GeneOntology.java:     public Ontology getOntology(String ontologyName) {
./GOtree/GeneOntology.java:     public void addTermToOntology(GOTerm term, String ontologyName) {
./GOtree/GeneOntology.java:     public void putTermByListOfIds(GOTerm term, List<String> l) {

./GOtree/GeneOntologyException.java: public class GeneOntologyException extends Exception {
./GOtree/GeneOntologyException.java:     public GeneOntologyException(String message) {
./GOtree/GeneOntologyException.java:     public String getMy_message() {

./GOtree/GeneOntologyParser.java: public class GeneOntologyParser {
./GOtree/GeneOntologyParser.java:     private void clear() {
./GOtree/GeneOntologyParser.java:     private void clearForTerm() {
./GOtree/GeneOntologyParser.java:     public GeneOntology readFromOBOFile(String OBOfileName) throws IOException, FileNotFoundException, GeneOntologyException {
./GOtree/GeneOntologyParser.java:     public GeneOntology readFromOBOFile(String OBOfileName, boolean useConsiderAsSynonym) throws IOException, FileNotFoundException, GeneOntologyException {
./GOtree/GeneOntologyParser.java:     private void processGOterm(String goId, String name, String ontology) {
./GOtree/GeneOntologyParser.java:     private void adjustRelations() throws GeneOntologyException {

./GOtree/GOTerm.java: public class GOTerm implements Comparable<GOTerm> {
./GOtree/GOTerm.java:     public GOTerm(final String GOid, final String function) throws IllegalArgumentException {
./GOtree/GOTerm.java:     public GOTerm(String GOid, String function, Ontology onto) throws IllegalArgumentException {
./GOtree/GOTerm.java:     public void setOntology(Ontology ontology) {
./GOtree/GOTerm.java:     public Set<GOTerm> getAncestorsRelation(final String rel) {
./GOtree/GOTerm.java:     public Set<GOTerm> getAncestors() {
./GOtree/GOTerm.java:     public Set<GOTerm> getDescendants() {
./GOtree/GOTerm.java:     public void addParent(final String relation, final GOTerm term) {
./GOtree/GOTerm.java:     public void addChildren(final String relation, final GOTerm term) {
./GOtree/GOTerm.java:     public Set<GOTerm> getDescendantsRelation(final String rel) {
./GOtree/GOTerm.java:     public static void setRelations(String[] rel) {
./GOtree/GOTerm.java:     public boolean isRoot(final String rel) {
./GOtree/GOTerm.java:     public boolean isLeaf(final String rel) {
./GOtree/GOTerm.java:     public Ontology getOntology() {
./GOtree/GOTerm.java:     public int getNumericId() {
./GOtree/GOTerm.java:     public String getGOid() {
./GOtree/GOTerm.java:     public void setGOid(final String GOid) {
./GOtree/GOTerm.java:     public String getFunction() {
./GOtree/GOTerm.java:     public void setFunction(String function) {
./GOtree/GOTerm.java:     public final List<GOTerm> getChildrenForRelation(final String rel) {
./GOtree/GOTerm.java:     public final List<GOTerm> getParentsForRelation(final String rel) {
./GOtree/GOTerm.java:     public static boolean checkRelation(final String rel) {
./GOtree/GOTerm.java:     public int hashCode() {
./GOtree/GOTerm.java:     public boolean equals(Object obj) {
./GOtree/GOTerm.java:     public int compareTo(GOTerm t) {

./GOtree/Ontology.java: public class Ontology {
./GOtree/Ontology.java:     public Ontology(String name) {
./GOtree/Ontology.java:     public boolean containsGOid(String GOid) {
./GOtree/Ontology.java:     public GOTerm getTermByID(String id) {
./GOtree/Ontology.java:     public String getName() {
./GOtree/Ontology.java:     public int size() {
./GOtree/Ontology.java:     public void addNode(GOTerm node) {
./GOtree/Ontology.java:     public List<GOTerm> getSetOfTerms() {
./GOtree/Propagation.java: public class Propagation {
./GOtree/Propagation.java:     public Assignment propagateAssignment(Assignment inputAssignment, GeneOntology ontology, PropagationStrategy propagationStrategy) {
./GOtree/PropagationStrategies/PropagationMax.java: public class PropagationMax extends PropagationStrategy {
./GOtree/PropagationStrategies/PropagationMax.java:     public Map<String, Double> propagateRow(final Map<String, Double> inputValues, final GeneOntology ontology) {
./GOtree/PropagationStrategies/PropagationMaxWithinTrees.java: public class PropagationMaxWithinTrees extends PropagationStrategy {
./GOtree/PropagationStrategies/PropagationMaxWithinTrees.java:     public Map<String, Double> propagateRow(final Map<String, Double> inputValues, final GeneOntology ontology) {
./GOtree/PropagationStrategy.java:     public Assignment propagateAssignment(Assignment other, GeneOntology onto) {

./HSM/GraphSimilarities/GraphSimilarity.java: public abstract class GraphSimilarity {
./HSM/GraphSimilarities/GraphSimilarity.java:     public GraphSimilarity(Assignment annotations) {
./HSM/GraphSimilarities/SimGICSimilarity.java: public class SimGICSimilarity extends GraphSimilarity {
./HSM/GraphSimilarities/SimGICSimilarity.java:     public SimGICSimilarity(Assignment annotations) {
./HSM/GraphSimilarities/SimGICSimilarity.java:     public float similarity(Set<GOTerm> s1, Set<GOTerm> s2) {
./HSM/GraphSimilarities/SimGICSimilarity.java:     public void setMaxAnnotations(double annot) {
./HSM/GraphSimilarities/SimGICSimilarity.java:     private float getInformationContent(GOTerm term) {
./HSM/GraphSimilarities/SimUISimilarity.java: public class SimUISimilarity extends GraphSimilarity {
./HSM/GraphSimilarities/SimUISimilarity.java:     public SimUISimilarity(Assignment annotations) {
./HSM/GraphSimilarities/SimUISimilarity.java:     public float similarity(Set<GOTerm> s1, Set<GOTerm> s2) {
./HSM/GraphSimilarities/SimUISimilarity.java:     public void setMaxAnnotations(double annot) {
./HSM/HSM.java: public abstract class HSM {
./HSM/HSM.java:     private double[] getMaxAnnotations() {
./HSM/HSM.java:     public int getNumGOTermsPerOntology(int ontology) {
./HSM/HSM.java:     public String[] getSubSetGenes() {
./HSM/HSM.java:     private void stripDownGeneData(String[] targetGenes) {
./HSM/HSM.java:     public boolean isAGraphBasedMeasure() {
./HSM/HSM.java:     private Map<Integer, Set<Integer>> computeDominancies(Matrix x) {
./HSM/Jiang.java: public class Jiang extends HSM {
./HSM/Jiang.java:     public Jiang(GOTerm[] allTerms, String[] genes, String[][] goIds, GOTerm[][] axis, String[] targets, Assignment annotations, String[] relations, TinyLogger logw) {
./HSM/Jiang.java:     public Matrix calculateGeneWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/Jiang.java:     public Matrix calculateTermWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/Lin.java: public class Lin extends HSM {
./HSM/Lin.java:     public Lin(GOTerm[] allTerms, String[] genes, String[][] goIds, GOTerm[][] axis, String[] targets, Assignment annotations, String[] relations, TinyLogger logw) {
./HSM/Lin.java:     public Matrix calculateGeneWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/Lin.java:     public Matrix calculateTermWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/Resnik.java: public class Resnik extends HSM {
./HSM/Resnik.java:     public Resnik(GOTerm[] allTerms, String[] genes, String[][] goIds, GOTerm[][] axis, String[] targets, Assignment annotations, String[] relations, TinyLogger logw) {
./HSM/Resnik.java:     public Matrix calculateTermWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/Resnik.java:     public Matrix calculateGeneWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/simGIC.java: public class simGIC extends HSM {
./HSM/simGIC.java:     public simGIC(GOTerm[] allTerms, String[] genes, String[][] goIds, GOTerm[][] axis, String[] targets, Assignment annotations, String[] relations, TinyLogger logw) {
./HSM/simGIC.java:     public Matrix calculateGeneWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/simGIC.java:     public Matrix calculateTermWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/simGraSM.java:     public TermWithIC(GOTerm term, float IC) {
./HSM/simGraSM.java:     public int compareTo(TermWithIC t) {
./HSM/simGraSM.java: public class simGraSM extends HSM {
./HSM/simGraSM.java:     public simGraSM(GOTerm[] allTerms, String[] genes, String[][] goIds, GOTerm[][] axis, String[] targets, Assignment annotations, String[] relations, TinyLogger logw) {
./HSM/simGraSM.java:     private HashSet<GOTerm> commonAncestors(GOTerm target1, GOTerm target2) {
./HSM/simGraSM.java:     private void pathFinder(GOTerm ancestor, GOTerm currentNode, Set<GOTerm> path, Set<Set<GOTerm>> allPaths) {
./HSM/simGraSM.java:     private int getNumPathsTermAncestor(GOTerm term, GOTerm ancestor) {
./HSM/simGraSM.java:     private int getNumPaths(GOTerm _t1, GOTerm _t2) {
./HSM/simGraSM.java:     private boolean DisjAnc(GOTerm c, GOTerm a1, GOTerm a2) {
./HSM/simGraSM.java:     private Map<GOTerm, Float> computeIC(Set<GOTerm> CA, double numAnnotationDAG) {
./HSM/simGraSM.java:     private List<GOTerm> sortByDescIC(Map<GOTerm, Float> values) {
./HSM/simGraSM.java:     private float shareGraSM(GOTerm c1, GOTerm c2, int dag) {
./HSM/simGraSM.java:     public Matrix calculateGeneWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/simGraSM.java:     public Matrix calculateTermWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/simUI.java: public class simUI extends HSM {
./HSM/simUI.java:     public simUI(GOTerm[] allTerms, String[] genes, String[][] goIds, GOTerm[][] axis, String[] targets, Assignment annotations, String[] relations, TinyLogger logw) {
./HSM/simUI.java:     public Matrix calculateGeneWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./HSM/simUI.java:     public Matrix calculateTermWiseSemanticSimilarity(int ontology) throws IOException, OutOfMemoryError {
./ISM/ConsoleParameterValidator.java: public class ConsoleParameterValidator extends ParameterValidator {
./ISM/ConsoleParameterValidator.java:     public ConsoleParameterValidator(String args[]) {
./ISM/ConsoleParameterValidator.java:     public void validate(TinyLogger logger) throws FileNotFoundException, IOException {
./ISM/GOtreeInterfacer.java: public class GOtreeInterfacer {
./ISM/GOtreeInterfacer.java:     public GOtreeInterfacer(String OBOpath, String annoPath, String[] relations, String[] evidenceCodes, int strategyChoice, String dagChoice, TinyLogger logw) throws FileNotFoundException, IOException, GeneOntologyException {
./ISM/GOtreeInterfacer.java:     public boolean annotationFileIsEmpty() {
./ISM/GOtreeInterfacer.java:     private void generate_GO(String OBOpath) throws FileNotFoundException, IOException, GeneOntologyException {
./ISM/GOtreeInterfacer.java:     private void load_Annotation(String annoPath, String[] evidenceCodes) throws FileNotFoundException, IOException {
./ISM/GOtreeInterfacer.java:     private void propagate_Annotations(int strategyChoice) {
./ISM/GOtreeInterfacer.java:         public int compare(GOTerm t, GOTerm t1) {
./ISM/GOtreeInterfacer.java:     private GOTerm[] orderGOTerms(List<GOTerm> terms) {
./ISM/GOtreeInterfacer.java:     private void generate_AdjacencyMatrices(GeneOntology go) throws IOException {
./ISM/GOtreeInterfacer.java:     private void propagator(int strategyChoice) throws IOException {
./ISM/GOtreeInterfacer.java:     private void stripper() throws IOException {
./ISM/GOtreeInterfacer.java:     private GOTerm[] stripDownAxis(GOTerm[] axis) {
./ISM/GOtreeInterfacer.java:     private void getGOtermsForProteins() {
./ISM/GOtreeInterfacer.java:     private String[] mapToString(Map<String, Double> map) {
./ISM/GOtreeInterfacer.java:     public GeneOntology getGO() {
./ISM/GOtreeInterfacer.java:     public Assignment getResults() {
./ISM/GOtreeInterfacer.java:     public GOTerm[] getBPaxis() {
./ISM/GOtreeInterfacer.java:     public GOTerm[] getMFaxis() {
./ISM/GOtreeInterfacer.java:     public GOTerm[] getCCaxis() {
./ISM/GOtreeInterfacer.java:     public String[] getGO_relations() {
./ISM/GOtreeInterfacer.java:     public String[] getGeneIDs() {
./ISM/GOtreeInterfacer.java:     public String[][] getGoIdsByGene() {
./ISM/GOtreeInterfacer.java:     public HashMap<GOTerm, Double> getWeightedAnnoMappings() {
./ISM/HSMInterfacer.java: public class HSMInterfacer {
./ISM/HSMInterfacer.java:     public HSMInterfacer(TinyLogger logw, Set<GOTerm> targets, GOTerm[][] matrixAxis, String[] targetGenes) {
./ISM/HSMInterfacer.java:     public String[] getComputedGenes() {
./ISM/HSMInterfacer.java:     public boolean isAGraphBasedMeasure() {
./ISM/HSMInterfacer.java:     public void retrieveHSMinstance(String name, Object[] params) throws IOException {
./ISM/HSMInterfacer.java:     public Matrix getOriginalCachedMatrix() {
./ISM/HSMInterfacer.java:     public Matrix returnGeneWiseResults(int matrix) throws IOException {
./ISM/HSMInterfacer.java:     public Matrix returnTermWiseResults(int matrix) throws IOException {
./ISM/HSMInterfacer.java:     private Matrix returnTrimmedMatrixForGenes(Matrix in) {
./ISM/HSMInterfacer.java:     private Matrix returnTrimmedMatrix(Matrix in, int matrix) {
./ISM/IoValidation.java: public class IoValidation {
./ISM/IoValidation.java:     public IoValidation() throws FileNotFoundException {
./ISM/IoValidation.java:     public static void setLogger(TinyLogger logga) {
./ISM/IoValidation.java:     public static String validateDagChoice(String dagChoice) throws IOException {
./ISM/IoValidation.java:     public static void validateRelations(String[] relations) throws IOException {
./ISM/IoValidation.java:     public static void validateEvidenceCodes(String[] codes) throws IOException {
./ISM/IoValidation.java:     public static void validateFilePaths(String oboFile, String goaFile) throws IOException {
./ISM/IoValidation.java:     public static void validateOutputLocation(String location) throws IOException {
./ISM/ISM.java: public class ISM {
./ISM/ISM.java:     public ISM() throws FileNotFoundException {
./ISM/ISM.java:     private void validateParameters(String args[]) throws FileNotFoundException, IOException {
./ISM/ISM.java:     private void setParametersConsole(ParameterValidator validator) {
./ISM/ISM.java:     private void setParametersPrompt(ParameterValidator validator) {
./ISM/ISM.java:     private GOtreeInterfacer importGOTree() throws FileNotFoundException, IOException, GeneOntologyException {
./ISM/ISM.java:     private static GOTerm[][] getMatrixAxis(GOtreeInterfacer gti) {
./ISM/ISM.java:     private ArrayList<GOTerm> validateGOTerms(GOTerm[][] matrixAxis) throws IOException {
./ISM/ISM.java:     public static void main(String[] args) {
./ISM/ISM.java:     private void computeAndWriteSemanticSimilarities(GOtreeInterfacer gti, GOTerm[][] matrixAxis, ArrayList<GOTerm> goIDsAsGOTerm) throws IOException {
./ISM/ISM.java:     private Object[] generateParameters(GOtreeInterfacer gti, GOTerm[][] matrixAxis) {
./ISM/ISM.java:     private int[] setLoopVars(String dagChoice, TinyLogger logger) throws IOException {
./ISM/ISM.java:     private void farewell() throws IOException {
./ISM/ISMInterfacer.java: public class ISMInterfacer {
./ISM/ISMInterfacer.java:     private Matrix returnTrimmedMatrix(Matrix in, int matrix, GOTerm[][] matrixAxis, Set<GOTerm> targets) {
./ISM/ISMInterfacer.java:     private Matrix returnTrimmedMatrixForGenes(Matrix in, String[] allGenes, String[] targetGenes) {
./ISM/ParameterValidator.java: public abstract class ParameterValidator {
./ISM/ParameterValidator.java:     public String[] getChosenRelations() {
./ISM/ParameterValidator.java:     public String[] getEvidenceCodes() {
./ISM/ParameterValidator.java:     public String getDagChoice() {
./ISM/ParameterValidator.java:     public String getIsmFileName() {
./ISM/ParameterValidator.java:     public String getHsmFileName() {
./ISM/ParameterValidator.java:     public String getOboFile() {
./ISM/ParameterValidator.java:     public boolean isIsmChoice() {
./ISM/ParameterValidator.java:     public boolean isTermWise() {
./ISM/ParameterValidator.java:     public String[] getGoIDs() {
./ISM/ParameterValidator.java:     public String[] getGeneIDs() {
./ISM/ParameterValidator.java:     public String getHsmChoice() {
./ISM/ParameterValidator.java:     public String getGoaFile() {
./ISM/ParameterValidator.java:     public ArrayList<String> getNotes() {
./ISM/ParameterValidator.java:     public boolean isOwnHSM() {
./ISM/ParameterValidator.java:     public boolean isWeightedJaccard() {
./ISM/ParameterValidator.java:     public int getMatrixStyle() {
./ISM/ParameterValidator.java:     public boolean isUseUniProtIds() {
./ISM/PromptParameterValidator.java: public class PromptParameterValidator extends ParameterValidator {
./ISM/PromptParameterValidator.java:     public PromptParameterValidator(TerminalInterface ui_) {
./ISM/PromptParameterValidator.java:     public void validate(TinyLogger logger) throws FileNotFoundException, IOException {
./ISM/SolutionPrinter.java: public class SolutionPrinter {
./ISM/SolutionPrinter.java:     private static final String ontologies[] = {"Biological process", "Molecular function", "Cellular Component"};
./ISM/SolutionPrinter.java:     public SolutionPrinter(TinyLogger logger) {
./ISM/SolutionPrinter.java:     public void printResultsToFile(int ontology, Matrix matrix, GOTerm[][] axis, String outputName, ArrayList<String> notes, ArrayList<GOTerm> targetGoIDs, String[] geneIDs) throws IOException {
./ISM/SolutionPrinter.java:     private Set<Integer> getGOIds(ArrayList<GOTerm> targetGoIDs, int ontology) {
./ISM/SolutionPrinter.java:     public void printeResultsToFileTripletStyle(int ontology, Matrix matrix, GOTerm[][] axis, String outputName, ArrayList<String> notes, ArrayList<GOTerm> targetGoIDs, String[] geneIDs) throws IOException {
./ISM/SolutionPrinter.java:     private String[] getRowIdentifiers(final int n, ArrayList<GOTerm> targetGoIDs, Set<Integer> goIds, String[] geneIDs, GOTerm[][] axis, int ontology) {
./ISM/SolutionPrinter.java:     private void printMessageNotEnoughAnnotations(File outputFileName) throws IOException {
./ISM/SolutionPrinter.java:     private File getOutputFileName(int ontology, String outputName) {
./ISM/SolutionPrinter.java:     private Set<Integer> getTermsForOntology(List<GOTerm> terms, String ontologyName) {
./ISM/TerminalInterface.java: public class TerminalInterface {
./ISM/TerminalInterface.java:     public String requestOBOfile() {
./ISM/TerminalInterface.java:     public String requestGOAfile() {
./ISM/TerminalInterface.java:     public String requestFileName(boolean HSM) {
./ISM/TerminalInterface.java:     public boolean usingOwnHSM() {
./ISM/TerminalInterface.java:     private void incorrect(String choice) {
./ISM/TerminalInterface.java:     public boolean requestJaccardChoice() {
./ISM/TerminalInterface.java:     public String requestHSMChoice(boolean termwise) {
./ISM/TerminalInterface.java:     public String requestOwnHSMname() {
./ISM/TerminalInterface.java:     public boolean requestTermwise() {
./ISM/TerminalInterface.java:     public boolean requestISMChoice() {
./ISM/TerminalInterface.java:     public String[] requestEvidenceCodes() {
./ISM/TerminalInterface.java:     public String requestDAG() {
./ISM/TerminalInterface.java:     public String[] requestCategories() {
./ISM/TerminalInterface.java:     public String[] requestGeneIDs() {
./ISM/TerminalInterface.java:     public String[] requestRelations() {
./ISM/TerminalInterface.java:     public void farewell() {
./ISM/TerminalInterface.java:     public void welcomer() {

./ISM_ImplementationStrategies/ISM_validImplementation.java: public class ISM_validImplementation {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     public ISM_validImplementation(GOTerm[] ISM_currentGoTerms, Matrix HSM, String[] ISM_currentRelations, Assignment ISM_Annotations, boolean termwise, boolean wJaccard, TinyLogger logger) {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     public Matrix computeISM() throws IOException {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private Matrix initialiseTransitionProbabilities() {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private void setTransitionProbabilitiesNonLeaf(GOTerm currentGoTerm, int N_v, int N_vStar, Matrix P) {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private Matrix walk() throws IOException {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private void setRandomWalkContributionTermwise(Matrix W) throws IOException {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private void setRandomWalkContributionGeneWise(Matrix W) throws IOException {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private Matrix getMatrixA() throws IOException {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private float getJaccardIndexWithoutIC(final float[] distributionProductOne, final float[] distributionProductTwo, float sumProductOne, float sumProductTwo) {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private float getJaccardIndexWithIC(final float[] distributionProductOne, final float[] distributionProductTwo, final float[] IC) {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private Matrix getISM() {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private int getNumberOfAnnotations(GOTerm currentGoTerm) {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private void setAllLeafs() {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private boolean isLeafISM(GOTerm currentTerm, String relation) {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private int[] getLeafIndices() {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private int[] getAllIndices() {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private int getNumGoTerms() {
./ISM_ImplementationStrategies/ISM_validImplementation.java:     private double getMaxOntology() {

./Jama/CholeskyDecomposition.java: public class CholeskyDecomposition implements java.io.Serializable {
./Jama/CholeskyDecomposition.java:    public CholeskyDecomposition (Matrix Arg) {
./Jama/CholeskyDecomposition.java:    public CholeskyDecomposition (Matrix Arg, int rightflag) {
./Jama/CholeskyDecomposition.java:    public Matrix getR () {
./Jama/CholeskyDecomposition.java:    public boolean isSPD () {
./Jama/CholeskyDecomposition.java:    public Matrix getL () {
./Jama/CholeskyDecomposition.java:    public Matrix solve (Matrix B) {
./Jama/EigenvalueDecomposition.java: public class EigenvalueDecomposition implements java.io.Serializable {
./Jama/EigenvalueDecomposition.java:    private void tred2 () {
./Jama/EigenvalueDecomposition.java:    private void tql2 () {
./Jama/EigenvalueDecomposition.java:    private void orthes () {
./Jama/EigenvalueDecomposition.java:    private void cdiv(float xr, float xi, float yr, float yi) {
./Jama/EigenvalueDecomposition.java:    private void hqr2 () {
./Jama/EigenvalueDecomposition.java:    public EigenvalueDecomposition (Matrix Arg) {
./Jama/EigenvalueDecomposition.java:    public Matrix getV () {
./Jama/EigenvalueDecomposition.java:    public float[] getRealEigenvalues () {
./Jama/EigenvalueDecomposition.java:    public float[] getImagEigenvalues () {
./Jama/EigenvalueDecomposition.java:    public Matrix getD () {
./Jama/LUDecomposition.java: public class LUDecomposition implements java.io.Serializable {
./Jama/LUDecomposition.java:    public LUDecomposition (Matrix A) {
./Jama/LUDecomposition.java:    public LUDecomposition (Matrix A, int linpackflag) {
./Jama/LUDecomposition.java:    public boolean isNonsingular () {
./Jama/LUDecomposition.java:    public Matrix getL () {
./Jama/LUDecomposition.java:    public Matrix getU () {
./Jama/LUDecomposition.java:    public int[] getPivot () {
./Jama/LUDecomposition.java:    public float[] getfloatPivot () {
./Jama/LUDecomposition.java:    public float det () {
./Jama/LUDecomposition.java:    public Matrix solve (Matrix B) {
./Jama/Matrix.java: public class Matrix implements Cloneable, java.io.Serializable {
./Jama/Matrix.java:     public Matrix(int m, int n) {
./Jama/Matrix.java:     public Matrix(int m, int n, float s) {
./Jama/Matrix.java:     public Matrix(float[][] A) {
./Jama/Matrix.java:     public Matrix(float[][] A, int m, int n) {
./Jama/Matrix.java:     public Matrix(float vals[], int m) {
./Jama/Matrix.java:     public static Matrix constructWithCopy(float[][] A) {
./Jama/Matrix.java:     public Matrix copy() {
./Jama/Matrix.java:     public Object clone() {
./Jama/Matrix.java:     public float[][] getArray() {
./Jama/Matrix.java:     public float[][] getArrayCopy() {
./Jama/Matrix.java:     public float[] getColumnPackedCopy() {
./Jama/Matrix.java:     public float[] getRowPackedCopy() {
./Jama/Matrix.java:     public int getRowDimension() {
./Jama/Matrix.java:     public int getColumnDimension() {
./Jama/Matrix.java:     public float get(int i, int j) {
./Jama/Matrix.java:     public Matrix getMatrix(int i0, int i1, int j0, int j1) {
./Jama/Matrix.java:     public double getSparsenessPercentage() {
./Jama/Matrix.java:     public SparseMatrix getSparseMatrix(int[] r, int[] c) {
./Jama/Matrix.java:     public Matrix getMatrix(int[] r, int[] c) {
./Jama/Matrix.java:     public Matrix getMatrix(int i0, int i1, int[] c) {
./Jama/Matrix.java:     public Matrix getMatrix(int[] r, int j0, int j1) {
./Jama/Matrix.java:     public void set(int i, int j, float s) {
./Jama/Matrix.java:     public void setMatrix(int i0, int i1, int j0, int j1, Matrix X) {
./Jama/Matrix.java:     public void setMatrix(int[] r, int[] c, Matrix X) {
./Jama/Matrix.java:     public void setMatrix(int[] r, int j0, int j1, Matrix X) {
./Jama/Matrix.java:     public void setMatrix(int i0, int i1, int[] c, Matrix X) {
./Jama/Matrix.java:     public Matrix transpose() {
./Jama/Matrix.java:     public float norm1() {
./Jama/Matrix.java:     public float norm2() {
./Jama/Matrix.java:     public float normInf() {
./Jama/Matrix.java:     public float normF() {
./Jama/Matrix.java:     public Matrix uminus() {
./Jama/Matrix.java:     public Matrix plus(Matrix B) {
./Jama/Matrix.java:     public Matrix plusEquals(Matrix B) {
./Jama/Matrix.java:     public Matrix minus(Matrix B) {
./Jama/Matrix.java:     public Matrix minusEquals(Matrix B) {
./Jama/Matrix.java:     public Matrix arrayTimes(Matrix B) {
./Jama/Matrix.java:     public Matrix arrayTimesEquals(Matrix B) {
./Jama/Matrix.java:     public Matrix arrayRightDivide(Matrix B) {
./Jama/Matrix.java:     public Matrix arrayRightDivideEquals(Matrix B) {
./Jama/Matrix.java:     public Matrix arrayLeftDivide(Matrix B) {
./Jama/Matrix.java:     public Matrix arrayLeftDivideEquals(Matrix B) {
./Jama/Matrix.java:     public Matrix times(float s) {
./Jama/Matrix.java:     public Matrix timesEquals(float s) {
./Jama/Matrix.java:     public Matrix times(Matrix B) {
./Jama/Matrix.java:     public Matrix timesIJK(Matrix B) {
./Jama/Matrix.java:     public Matrix timesIKJ(Matrix B) {
./Jama/Matrix.java:     public LUDecomposition lu() {
./Jama/Matrix.java:     public QRDecomposition qr() {
./Jama/Matrix.java:     public CholeskyDecomposition chol() {
./Jama/Matrix.java:     public SingularValueDecomposition svd() {
./Jama/Matrix.java:     public EigenvalueDecomposition eig() {
./Jama/Matrix.java:     public Matrix solve(Matrix B) {
./Jama/Matrix.java:     public Matrix solveTranspose(Matrix B) {
./Jama/Matrix.java:     public Matrix inverse() {
./Jama/Matrix.java:     public float det() {
./Jama/Matrix.java:     public int rank() {
./Jama/Matrix.java:     public float cond() {
./Jama/Matrix.java:     public float trace() {
./Jama/Matrix.java:     public static Matrix random(int m, int n) {
./Jama/Matrix.java:     public static Matrix identity(int m, int n) {
./Jama/Matrix.java:     public void print(int w, int d) {
./Jama/Matrix.java:     public void print(PrintWriter output, int w, int d) {
./Jama/Matrix.java:     public void print(NumberFormat format, int width) {
./Jama/Matrix.java:     public void print(PrintWriter output, NumberFormat format, int width) {
./Jama/Matrix.java:     public static Matrix read(BufferedReader input) throws java.io.IOException {
./Jama/Matrix.java:     private void checkMatrixDimensions(Matrix B) {
./Jama/Matrix.java:     public float[] getColumn(int j) {
./Jama/Matrix.java:     public static Matrix getRandom(int n, int m) {
./Jama/Matrix.java:     public static boolean matrix_equal(Matrix a, Matrix b) {
./Jama/Matrix.java:     public static void main(String args[]) {
./Jama/QRDecomposition.java: public class QRDecomposition implements java.io.Serializable {
./Jama/QRDecomposition.java:    public QRDecomposition (Matrix A) {
./Jama/QRDecomposition.java:    public boolean isFullRank () {
./Jama/QRDecomposition.java:    public Matrix getH () {
./Jama/QRDecomposition.java:    public Matrix getR () {
./Jama/QRDecomposition.java:    public Matrix getQ () {
./Jama/QRDecomposition.java:    public Matrix solve (Matrix B) {
./Jama/SingularValueDecomposition.java: public class SingularValueDecomposition implements java.io.Serializable {
./Jama/SingularValueDecomposition.java:    public SingularValueDecomposition (Matrix Arg) {
./Jama/SingularValueDecomposition.java:    public Matrix getU () {
./Jama/SingularValueDecomposition.java:    public Matrix getV () {
./Jama/SingularValueDecomposition.java:    public float[] getSingularValues () {
./Jama/SingularValueDecomposition.java:    public Matrix getS () {
./Jama/SingularValueDecomposition.java:    public float norm2 () {
./Jama/SingularValueDecomposition.java:    public float cond () {
./Jama/SingularValueDecomposition.java:    public int rank () {
./Jama/SparseMatrix.java: public class SparseMatrix extends Matrix {
./Jama/SparseMatrix.java:     public SparseMatrix(int m, int n) {
./Jama/SparseMatrix.java:     public void set(int i, int j, float s) {
./Jama/SparseMatrix.java:     public Matrix times(Matrix B) {
./Jama/SparseMatrix.java:     public static Matrix getRandom(int n, int m) {
./Jama/SparseMatrix.java:     public static void main(String args[]) {
./Jama/util/Maths.java: public class Maths {
./Jama/util/Maths.java:    public static float hypot(float a, float b) {
./util/TinyLogger.java: public class TinyLogger {
./util/TinyLogger.java:     public static void setLogging(boolean _logging) {
./util/TinyLogger.java:     public void initialiseLogWriter(String fileName) throws FileNotFoundException, IOException {
./util/TinyLogger.java:     public void initialiseLogWriter() throws FileNotFoundException, IOException {
./util/TinyLogger.java:     public void log(String log) throws IOException {
./util/TinyLogger.java:     public void logAndCloseWriter(String log) throws IOException {
./util/TinyLogger.java:     public void showMemoryUsage() throws IOException {
./util/TinyLogger.java:     private String getTimestamp() {
./util/TinyLogger.java:     public void showTimedMessage(String message) throws IOException {
./util/TinyLogger.java:     public void showMessage(String message) throws IOException {
