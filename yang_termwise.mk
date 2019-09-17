all:
	make -f yang_termwise.mk fig1a_Resnik
	make -f yang_termwise.mk fig1b_Resnik
	make -f yang_termwise.mk fig2a_Resnik
	make -f yang_termwise.mk fig2a_small_Resnik
	make -f yang_termwise.mk faa2a_nonleaf0_Resnik
	make -f yang_termwise.mk fig2a_nonleaf0_Resnik
	make -f yang_termwise.mk fig2a_small_Lin
	make -f yang_termwise.mk faa2a_nonleaf0_Lin
	make -f yang_termwise.mk fig2a_nonleaf0_Lin
	make -f yang_termwise.mk fig1a_Lin
	make -f yang_termwise.mk fig1b_Lin
	make -f yang_termwise.mk fig2a_Lin
	make -f yang_termwise.mk fig1a_Jiang
	make -f yang_termwise.mk fig1b_Jiang
	make -f yang_termwise.mk fig2a_Jiang
	make -f yang_termwise.mk fig1a_simGraSM
	make -f yang_termwise.mk fig1b_simGraSM
	make -f yang_termwise.mk fig2a_simGraSM
	mv f*_output*.txt /cygdrive/c/Users/note2/Data/git/goatools_alpha/tests/data/yangRWC/


faa2a_nonleaf0_Resnik:
	@echo "###### faa2a_nonleaf0 nonleaf0 ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/faa2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/faa2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput faa2a_nonleaf0_Resnik_termwise_hsm_output  \
	-ismoutput faa2a_nonleaf0_Resnik_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_nonleaf0_Resnik:
	@echo "###### fig2a_nonleaf0 nonleaf0 ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig2a_nonleaf0_Resnik_termwise_hsm_output  \
	-ismoutput fig2a_nonleaf0_Resnik_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_small_Resnik:
	@echo "###### fig2a_small small ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput fig2a_small_Resnik_termwise_hsm_output  \
	-ismoutput fig2a_small_Resnik_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all


faa2a_nonleaf0_Lin:
	@echo "###### faa2a_nonleaf0 nonleaf0 ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/faa2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/faa2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput faa2a_nonleaf0_Lin_termwise_hsm_output  \
	-ismoutput faa2a_nonleaf0_Lin_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_nonleaf0_Lin:
	@echo "###### fig2a_nonleaf0 nonleaf0 ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput fig2a_nonleaf0_Lin_termwise_hsm_output  \
	-ismoutput fig2a_nonleaf0_Lin_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

fig2a_small_Lin:
	@echo "###### fig2a_small small ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata termwise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput fig2a_small_Lin_termwise_hsm_output  \
	-ismoutput fig2a_small_Lin_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all


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
	-hsmoutput fig1a_Resnik_termwise_hsm_output  \
	-ismoutput fig1a_Resnik_termwise_ism_output  \
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
	-hsmoutput fig1a_Lin_termwise_hsm_output  \
	-ismoutput fig1a_Lin_termwise_ism_output  \
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
	-hsmoutput fig1a_Jiang_termwise_hsm_output  \
	-ismoutput fig1a_Jiang_termwise_ism_output  \
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
	-hsmoutput fig1a_simGraSM_termwise_hsm_output  \
	-ismoutput fig1a_simGraSM_termwise_ism_output  \
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
	-hsmoutput fig1b_Resnik_termwise_hsm_output  \
	-ismoutput fig1b_Resnik_termwise_ism_output  \
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
	-hsmoutput fig1b_Lin_termwise_hsm_output  \
	-ismoutput fig1b_Lin_termwise_ism_output  \
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
	-hsmoutput fig1b_Jiang_termwise_hsm_output  \
	-ismoutput fig1b_Jiang_termwise_ism_output  \
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
	-hsmoutput fig1b_simGraSM_termwise_hsm_output  \
	-ismoutput fig1b_simGraSM_termwise_ism_output  \
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
	-hsmoutput fig2a_Resnik_termwise_hsm_output  \
	-ismoutput fig2a_Resnik_termwise_ism_output  \
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
	-hsmoutput fig2a_Lin_termwise_hsm_output  \
	-ismoutput fig2a_Lin_termwise_ism_output  \
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
	-hsmoutput fig2a_Jiang_termwise_hsm_output  \
	-ismoutput fig2a_Jiang_termwise_ism_output  \
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
	-hsmoutput fig2a_simGraSM_termwise_hsm_output  \
	-ismoutput fig2a_simGraSM_termwise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

