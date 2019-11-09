# Generate expected data for:
#   tests/test_yang_genewise.py

PHONY: all
PHONY: j0_faa2a_nonleaf0_Resnik
PHONY: j0_fig2a_nonleaf0_Resnik
PHONY: j0_fig2a_small_Resnik
PHONY: j0_faa2a_nonleaf0_Lin
PHONY: j0_fig2a_nonleaf0_Lin
PHONY: j0_fig2a_small_Lin
PHONY: j0_fig1a_Resnik
PHONY: j0_fig1a_Lin
PHONY: j0_fig1a_Jiang
PHONY: j0_fig1a_simGraSM
PHONY: j0_fig1b_Resnik
PHONY: j0_fig1b_Lin
PHONY: j0_fig1b_Jiang
PHONY: j0_fig1b_simGraSM
PHONY: j0_fig2a_Resnik
PHONY: j0_fig2a_Lin
PHONY: j0_fig2a_Jiang
PHONY: j0_fig2a_simGraSM

PHONY: j1_faa2a_nonleaf0_Resnik
PHONY: j1_fig2a_nonleaf0_Resnik
PHONY: j1_fig2a_small_Resnik
PHONY: j1_faa2a_nonleaf0_Lin
PHONY: j1_fig2a_nonleaf0_Lin
PHONY: j1_fig2a_small_Lin
PHONY: j1_fig1a_Resnik
PHONY: j1_fig1a_Lin
PHONY: j1_fig1a_Jiang
PHONY: j1_fig1a_simGraSM
PHONY: j1_fig1b_Resnik
PHONY: j1_fig1b_Lin
PHONY: j1_fig1b_Jiang
PHONY: j1_fig1b_simGraSM
PHONY: j1_fig2a_Resnik
PHONY: j1_fig2a_Lin
PHONY: j1_fig2a_Jiang
PHONY: j1_fig2a_simGraSM

all:
	make -f yang_genewise.mk j0_fig1a_Resnik
	make -f yang_genewise.mk j0_fig1b_Resnik
	make -f yang_genewise.mk j0_fig2a_Resnik
	make -f yang_genewise.mk j0_fig2a_small_Resnik
	make -f yang_genewise.mk j0_faa2a_nonleaf0_Resnik
	make -f yang_genewise.mk j0_fig2a_nonleaf0_Resnik
	make -f yang_genewise.mk j0_fig2a_small_Lin
	make -f yang_genewise.mk j0_faa2a_nonleaf0_Lin
	make -f yang_genewise.mk j0_fig2a_nonleaf0_Lin
	make -f yang_genewise.mk j0_fig1a_Lin
	make -f yang_genewise.mk j0_fig1b_Lin
	make -f yang_genewise.mk j0_fig2a_Lin
	make -f yang_genewise.mk j0_fig1a_Jiang
	make -f yang_genewise.mk j0_fig1b_Jiang
	make -f yang_genewise.mk j0_fig2a_Jiang
	make -f yang_genewise.mk j0_fig1a_simGraSM
	make -f yang_genewise.mk j0_fig1b_simGraSM
	make -f yang_genewise.mk j0_fig2a_simGraSM
	make -f yang_genewise.mk j1_fig1a_Resnik
	make -f yang_genewise.mk j1_fig1b_Resnik
	make -f yang_genewise.mk j1_fig2a_Resnik
	make -f yang_genewise.mk j1_fig2a_small_Resnik
	make -f yang_genewise.mk j1_faa2a_nonleaf0_Resnik
	make -f yang_genewise.mk j1_fig2a_nonleaf0_Resnik
	make -f yang_genewise.mk j1_fig2a_small_Lin
	make -f yang_genewise.mk j1_faa2a_nonleaf0_Lin
	make -f yang_genewise.mk j1_fig2a_nonleaf0_Lin
	make -f yang_genewise.mk j1_fig1a_Lin
	make -f yang_genewise.mk j1_fig1b_Lin
	make -f yang_genewise.mk j1_fig2a_Lin
	make -f yang_genewise.mk j1_fig1a_Jiang
	make -f yang_genewise.mk j1_fig1b_Jiang
	make -f yang_genewise.mk j1_fig2a_Jiang
	make -f yang_genewise.mk j1_fig1a_simGraSM
	make -f yang_genewise.mk j1_fig1b_simGraSM
	make -f yang_genewise.mk j1_fig2a_simGraSM
	mv j*_f*_output*.txt /cygdrive/c/Users/note2/Data/git/goatools_alpha/tests/data/yangRWC/


j0_faa2a_nonleaf0_Resnik:
	@echo "###### faa2a_nonleaf0 nonleaf0 ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/faa2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/faa2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j0_faa2a_nonleaf0_Resnik_genewise_hsm_output  \
	-ismoutput j0_faa2a_nonleaf0_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_nonleaf0_Resnik:
	@echo "###### fig2a_nonleaf0 nonleaf0 ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j0_fig2a_nonleaf0_Resnik_genewise_hsm_output  \
	-ismoutput j0_fig2a_nonleaf0_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_small_Resnik:
	@echo "###### fig2a_small small ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j0_fig2a_small_Resnik_genewise_hsm_output  \
	-ismoutput j0_fig2a_small_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all


j0_faa2a_nonleaf0_Lin:
	@echo "###### faa2a_nonleaf0 nonleaf0 ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/faa2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/faa2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput faa2a_nonleaf0_Lin_genewise_hsm_output  \
	-ismoutput faa2a_nonleaf0_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_nonleaf0_Lin:
	@echo "###### fig2a_nonleaf0 nonleaf0 ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j0_fig2a_nonleaf0_Lin_genewise_hsm_output  \
	-ismoutput j0_fig2a_nonleaf0_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_small_Lin:
	@echo "###### fig2a_small small ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j0_fig2a_small_Lin_genewise_hsm_output  \
	-ismoutput j0_fig2a_small_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all


j0_fig1a_Resnik:
	@echo "###### fig1a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j0_fig1a_Resnik_genewise_hsm_output  \
	-ismoutput j0_fig1a_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1a_Lin:
	@echo "###### fig1a ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j0_fig1a_Lin_genewise_hsm_output  \
	-ismoutput j0_fig1a_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1a_Jiang:
	@echo "###### fig1a ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput j0_fig1a_Jiang_genewise_hsm_output  \
	-ismoutput j0_fig1a_Jiang_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1a_simGraSM:
	@echo "###### fig1a ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput j0_fig1a_simGraSM_genewise_hsm_output  \
	-ismoutput j0_fig1a_simGraSM_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1b_Resnik:
	@echo "###### fig1b ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j0_fig1b_Resnik_genewise_hsm_output  \
	-ismoutput j0_fig1b_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1b_Lin:
	@echo "###### fig1b ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j0_fig1b_Lin_genewise_hsm_output  \
	-ismoutput j0_fig1b_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1b_Jiang:
	@echo "###### fig1b ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput j0_fig1b_Jiang_genewise_hsm_output  \
	-ismoutput j0_fig1b_Jiang_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig1b_simGraSM:
	@echo "###### fig1b ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput j0_fig1b_simGraSM_genewise_hsm_output  \
	-ismoutput j0_fig1b_simGraSM_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_Resnik:
	@echo "###### fig2a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j0_fig2a_Resnik_genewise_hsm_output  \
	-ismoutput j0_fig2a_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_Lin:
	@echo "###### fig2a ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j0_fig2a_Lin_genewise_hsm_output  \
	-ismoutput j0_fig2a_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_Jiang:
	@echo "###### fig2a ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput j0_fig2a_Jiang_genewise_hsm_output  \
	-ismoutput j0_fig2a_Jiang_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all

j0_fig2a_simGraSM:
	@echo "###### fig2a ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput j0_fig2a_simGraSM_genewise_hsm_output  \
	-ismoutput j0_fig2a_simGraSM_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard false  \
	-terms all


##########################################################################################

j1_faa2a_nonleaf0_Resnik:
	@echo "###### faa2a_nonleaf0 nonleaf0 ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/faa2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/faa2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j1_faa2a_nonleaf0_Resnik_genewise_hsm_output  \
	-ismoutput j1_faa2a_nonleaf0_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_nonleaf0_Resnik:
	@echo "###### fig2a_nonleaf0 nonleaf0 ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j1_fig2a_nonleaf0_Resnik_genewise_hsm_output  \
	-ismoutput j1_fig2a_nonleaf0_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_small_Resnik:
	@echo "###### fig2a_small small ####################################### Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j1_fig2a_small_Resnik_genewise_hsm_output  \
	-ismoutput j1_fig2a_small_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all


j1_faa2a_nonleaf0_Lin:
	@echo "###### faa2a_nonleaf0 nonleaf0 ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/faa2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/faa2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput faa2a_nonleaf0_Lin_genewise_hsm_output  \
	-ismoutput faa2a_nonleaf0_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_nonleaf0_Lin:
	@echo "###### fig2a_nonleaf0 nonleaf0 ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_nonleaf0.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j1_fig2a_nonleaf0_Lin_genewise_hsm_output  \
	-ismoutput j1_fig2a_nonleaf0_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_small_Lin:
	@echo "###### fig2a_small small ####################################### Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a_small.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j1_fig2a_small_Lin_genewise_hsm_output  \
	-ismoutput j1_fig2a_small_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all


j1_fig1a_Resnik:
	@echo "###### fig1a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j1_fig1a_Resnik_genewise_hsm_output  \
	-ismoutput j1_fig1a_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1a_Lin:
	@echo "###### fig1a ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j1_fig1a_Lin_genewise_hsm_output  \
	-ismoutput j1_fig1a_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1a_Jiang:
	@echo "###### fig1a ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput j1_fig1a_Jiang_genewise_hsm_output  \
	-ismoutput j1_fig1a_Jiang_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1a_simGraSM:
	@echo "###### fig1a ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1a.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput j1_fig1a_simGraSM_genewise_hsm_output  \
	-ismoutput j1_fig1a_simGraSM_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1b_Resnik:
	@echo "###### fig1b ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j1_fig1b_Resnik_genewise_hsm_output  \
	-ismoutput j1_fig1b_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1b_Lin:
	@echo "###### fig1b ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j1_fig1b_Lin_genewise_hsm_output  \
	-ismoutput j1_fig1b_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1b_Jiang:
	@echo "###### fig1b ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput j1_fig1b_Jiang_genewise_hsm_output  \
	-ismoutput j1_fig1b_Jiang_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig1b_simGraSM:
	@echo "###### fig1b ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig1b.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig1b.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput j1_fig1b_simGraSM_genewise_hsm_output  \
	-ismoutput j1_fig1b_simGraSM_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_Resnik:
	@echo "###### fig2a ############################################# Resnik #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Resnik  \
	-hsmoutput j1_fig2a_Resnik_genewise_hsm_output  \
	-ismoutput j1_fig2a_Resnik_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_Lin:
	@echo "###### fig2a ############################################# Lin #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Lin  \
	-hsmoutput j1_fig2a_Lin_genewise_hsm_output  \
	-ismoutput j1_fig2a_Lin_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_Jiang:
	@echo "###### fig2a ############################################# Jiang #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm Jiang  \
	-hsmoutput j1_fig2a_Jiang_genewise_hsm_output  \
	-ismoutput j1_fig2a_Jiang_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all

j1_fig2a_simGraSM:
	@echo "###### fig2a ############################################# simGraSM #########"
	java -jar dist/Gossto.jar  \
	-calculationdata genewise  \
	-calculationtype ism  \
	-evidencecodes EXP,IDA,IPI,IMP,IGI,IEP,TAS,IC  \
	-goapath ../goatools/tests/data/yangRWC/fig2a.gaf  \
	-obopath ../goatools/tests/data/yangRWC/fig2a.obo  \
	-ontology cc  \
	-hsm simGraSM  \
	-hsmoutput j1_fig2a_simGraSM_genewise_hsm_output  \
	-ismoutput j1_fig2a_simGraSM_genewise_ism_output  \
	-ontology all  \
	-relations is_a  \
	-weightedJaccard true  \
	-terms all


