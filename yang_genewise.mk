all:
	make -f yang.mk fig1a_Resnik
	make -f yang.mk fig1b_Resnik
	make -f yang.mk fig2a_Resnik
	mv fig*_output*.txt /cygdrive/c/Users/note2/Data/git/goatools_alpha/tests/data/yangRWC/

fig1a_Resnik:
	@echo "###### fig1a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig1a_Resnik_hsm_genewise_output  \
	-ismoutput fig1a_Resnik_ism_genewise_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1b_Resnik:
	@echo "###### fig1b ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig1b_Resnik_hsm_genewise_output  \
	-ismoutput fig1b_Resnik_ism_genewise_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_Resnik:
	@echo "###### fig2a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig2a_Resnik_hsm_genewise_output  \
	-ismoutput fig2a_Resnik_ism_genewise_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

