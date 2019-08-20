./ISM_ImplementationStrategies/ISM_validImplementation.java: public class ISM_validImplementation {

-public ISM_validImplementation(GOTerm[] ISM_currentGoTerms, Matrix HSM, String[] ISM_currentRelations, Assignment ISM_Annotations, boolean termwise, boolean wJaccard, TinyLogger logger) {
--private int[] getLeafIndices() {
--private int[] getAllIndices() {
--private double getMaxOntology() {
--private void setAllLeafs() {
---private boolean isLeafISM(GOTerm currentTerm, String relation) {
----private int getNumberOfAnnotations(GOTerm currentGoTerm) {

-public Matrix computeISM() throws IOException {

--private Matrix walk() throws IOException {
---private Matrix initialiseTransitionProbabilities() {
----private int getNumberOfAnnotations(GOTerm currentGoTerm) {
----private int getNumberOfAnnotationsStar(GOTerm currentGoTerm) {
-----private int getNumberOfAnnotations(GOTerm currentGoTerm) {
----private void setTransitionProbabilitiesNonLeaf(GOTerm currentGoTerm, int N_v, int N_vStar, Matrix P) {
-----private int getNumberOfAnnotations(GOTerm currentGoTerm) {

--private void setRandomWalkContributionTermwise(Matrix W) throws IOException {

--private void setRandomWalkContributionGeneWise(Matrix W) throws IOException {
---private Matrix getMatrixA() throws IOException {
---private double getMaxOntology() {
----private int getNumberOfAnnotationsStar(GOTerm currentGoTerm) {
-----private int getNumberOfAnnotations(GOTerm currentGoTerm) {
---private float getJaccardIndexWithoutIC(final float[] distributionProductOne, final float[] distributionProductTwo, float sumProductOne, float sumProductTwo) {
---private float getJaccardIndexWithIC(final float[] distributionProductOne, final float[] distributionProductTwo, final float[] IC) {

--private Matrix getISM() {

--private int getNumGoTerms() {
