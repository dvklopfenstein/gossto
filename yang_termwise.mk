all:
	make -f yang.mk fig1a_Resnik
	make -f yang.mk fig1b_Resnik
	make -f yang.mk fig2a_Resnik
	make -f yang.mk fig1a_Lin
	make -f yang.mk fig1b_Lin
	make -f yang.mk fig2a_Lin
	make -f yang.mk fig1a_Jiang
	make -f yang.mk fig1b_Jiang
	make -f yang.mk fig2a_Jiang
	make -f yang.mk fig1a_simGraSM
	make -f yang.mk fig1b_simGraSM
	make -f yang.mk fig2a_simGraSM
	mv fig*_output*.txt /cygdrive/c/Users/note2/Data/git/goatools_alpha/tests/data/yangRWC/

fig1a_Resnik:
	@echo "###### fig1a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig1a_Resnik_hsm_output  \
	-ismoutput fig1a_Resnik_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1a_Lin:
	@echo "###### fig1a ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput fig1a_Lin_hsm_output  \
	-ismoutput fig1a_Lin_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1a_Jiang:
	@echo "###### fig1a ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput fig1a_Jiang_hsm_output  \
	-ismoutput fig1a_Jiang_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1a_simGraSM:
	@echo "###### fig1a ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput fig1a_simGraSM_hsm_output  \
	-ismoutput fig1a_simGraSM_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1b_Resnik:
	@echo "###### fig1b ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig1b_Resnik_hsm_output  \
	-ismoutput fig1b_Resnik_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1b_Lin:
	@echo "###### fig1b ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput fig1b_Lin_hsm_output  \
	-ismoutput fig1b_Lin_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1b_Jiang:
	@echo "###### fig1b ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput fig1b_Jiang_hsm_output  \
	-ismoutput fig1b_Jiang_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig1b_simGraSM:
	@echo "###### fig1b ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput fig1b_simGraSM_hsm_output  \
	-ismoutput fig1b_simGraSM_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_Resnik:
	@echo "###### fig2a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig2a_Resnik_hsm_output  \
	-ismoutput fig2a_Resnik_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_Lin:
	@echo "###### fig2a ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput fig2a_Lin_hsm_output  \
	-ismoutput fig2a_Lin_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_Jiang:
	@echo "###### fig2a ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput fig2a_Jiang_hsm_output  \
	-ismoutput fig2a_Jiang_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_simGraSM:
	@echo "###### fig2a ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput fig2a_simGraSM_hsm_output  \
	-ismoutput fig2a_simGraSM_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

