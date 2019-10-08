find:
	find . -name \*.java

2ag:
	make 2ag0 2ag1j0 2ag1j1
	cp -f 2ag*_?sm_output_CC.txt ../goatools_alpha/tests/data/yangRWC

# genewise with jaccard index NOT using info_cnt
2ag0:
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput 2ag0_hsm_output \
	-ismoutput 2ag0_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

# genewise without weighted jaccard index using info_cnt
2ag1j0:
	java -jar dist/Gossto.jar \
	-calculationdata genewise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput 2ag1j0_hsm_output \
	-ismoutput 2ag1j0_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

# genewise without weighted jaccard index using info_cnt
2ag1j1:
	java -jar dist/Gossto.jar \
	-calculationdata genewise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput 2ag1j1_hsm_output \
	-ismoutput 2ag1j1_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard true \
	-terms all

# termwise
2a:
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput yang2a_hsm_output \
	-ismoutput yang2a_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

1a:
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput yang1a_hsm_output \
	-ismoutput yang1a_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

1b:
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput yang1b_hsm_output \
	-ismoutput yang1b_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

example: gene_association.goa_yeast
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath gene_association.goa_yeast \
	-obopath gene_ontology_ext.obo \
	-hsm Resnik \
	-hsmoutput demo_hsm_output \
	-ismoutput demo_ism_output \
	-ontology all \
	-relations is_a,part_of \
	-weightedJaccard false \
	-terms all

ex1: go-basic.obo
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath goa_human.gaf \
	-obopath go-basic.obo \
	-hsm Resnik \
	-hsmoutput resnik_hsm_output \
	-ismoutput resnik_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

ex2:
	java -jar dist/Gossto.jar \
	-calculationdata termwise \
	-calculationtype ism \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC \
	-goapath goa_human.gaf \
	-obopath secretory.obo \
	-ontology cc \
	-hsm Resnik \
	-hsmoutput secretory_hsm_output \
	-ismoutput secretory_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

secretory.obo:
	cp ../goatools/tests/data/secretory.obo .

dnld:
	rm -f go-basic.obo
	wget http://purl.obolibrary.org/obo/go/go-basic.obo
	rm -f goa_human.gaf.gz; rm -f goa_human.gaf
	wget http://geneontology.org/gene-associations/goa_human.gaf.gz
	gunzip goa_human.gaf.gz

gene_association.goa_yeast:
	wget https://www.paccanarolab.org/gosstoweb/files/Gossto_with_data.zip
	unzip Gossto_with_data.zip

go-basic.obo:
	make dnld

br:
	git checkout -b DVK

.PHONY: ism
ism:
	vim -p ./ISM_ImplementationStrategies/ISM_validImplementation.java

main:
	find . -name \*.java | xargs grep 'static void main'

# BUILDING LOCALLY:
#   Ant from: https://ant.apache.org/bindownload.cgi
#   Ivy from: http://ant.apache.org/ivy/download.cgi
jar:
	~/ant/apache-ant-1.10.6/bin/ant -verbose jar 

clean:
	rm -rf Gossto_with_data.zip Gossto.jar readme.pdf
	rm -rf *.gz

clobber:
	rm -rf gene_ontology_ext.obo gene_association.goa_yeast
