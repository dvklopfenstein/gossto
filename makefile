
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
	-hsmoutput latest_hsm_output \
	-ismoutput latest_ism_output \
	-ontology all \
	-relations is_a \
	-weightedJaccard false \
	-terms all

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
	~/ant/apache-ant-1.10.6/bin/ant jar

clean:
	rm -rf Gossto_with_data.zip Gossto.jar readme.pdf
	rm -rf *.gz

clobber:
	rm -rf gene_ontology_ext.obo gene_association.goa_yeast
