# AEJPol-2019-xxxx.R1  "PAPER TITLE" Validation and Replication results

You may want to consult [Unofficial Verification Guidance](https://social-science-data-editors.github.io/guidance/Verification_guidance.html) for additional tips and criteria.

> [NOTE] This is an amalgam of multiple reports, and updated to reflect template and guidance as of February 2022. 

SUMMARY
-------

Thank you for your replication archive. All tables and figures are replicated, with one minor discrepancy in Table 1. 


**Conditional on making the requested changes to the manuscript and the openICPSR deposit prior to publication, the replication package is accepted.**

In assessing compliance with our [Data and Code Availability Policy](https://www.aeaweb.org/journals/policies/data-code), we have identified the following issues, which we ask you to address:

### Action Items (manuscript)

(these are handled during copy-editing, and involve no further interaction with the Data Editor)

- [REQUIRED] Please add data citations to the article. Guidance on how to cite data is provided in the [AEA Sample References](https://www.aeaweb.org/journals/policies/sample-references) and in [additional guidance](https://social-science-data-editors.github.io/guidance/addtl-data-citation-guidance.html).

- [REQUIRED] Please adjust your tables to account for the noted numerical discrepancies, or explain (in the README) discrepancies that a replicator should expect. 

### Action Items (openICPSR)

(these are handled prior to publication, and are verified by the Data Editor, but no code is re-run).

- [REQUIRED] Please provide debugged code, addressing the issues identified in this report.
- [REQUIRED] Please provide missing code (appendix table)
- [REQUIRED] Please adjust your tables to account for the noted numerical discrepancies, or explain (in the README) discrepancies that a replicator should expect. 
- [SUGGESTED] The authors should check if the three surveys are cataloged and stored in the World Bank Microdata catalog. If yes, referencing the relevant entries from the Microdata catalog is required.
- [REQUIRED] openICPSR should not have ZIP files visible. ZIP files should be uploaded to openICPSR via "Import from ZIP" instead of "Upload Files". Please delete the ZIP files, and re-upload using the "Import from ZIP" function.
- [REQUIRED] Please amend README to contain complete requirements. 


Data description
----------------

### Current Employment Statistics

- Dataset is not provided, but a link is provided in the README
- Access conditions are not described. It turns out, the data are in the public domain. This might warrant being identified in the report.
- The data are cited in the references section of the manuscript and the README. Data citation:

> Bureau of Labor Statistics. 2000–2010. “Current Employment Statistics: Colorado, Total Nonfarm, Seasonally adjusted - SMS08000000000000001.” United States Department of Labor. http://data.bls.gov/cgi-bin/surveymost?sm+08 (accessed February 9, 2011).

### Surveys by World Bank: Baseline survey, 3-year (200x) and 6-year (201x) follow-ups (PII removed)

- Data Source: World Bank and the authors' survey
- The World Bank collected both a baseline survey and initial follow-up survey to assess short-run program impacts.
- Note that the raw survey datasets the authors have published have been modified slightly from the original raw data in order to remove PII. In particular, they have removed the recorded date of birth for all survey respondents (year and month of birth are still included).
- The original study  describing the first two surveys was cited in the manuscript. It appears that the last follow-up survey is conducted by the authors. Access information is detailed in the readme.

NOTES: The citation in the manuscript is to a description of the first two waves, not to the actual data.

> [SUGGESTED] The authors provide data from Waves I and Wave II, and Wave III (conducted by the authors). Presumably, all three surveys are cataloged and stored in the World Bank Microdata catalog. Referencing the relevant entries from the Microdata catalog is strongly suggested, as it provides additional metadata and findability. 

> [REQUIRED] Please add data citations to the article. Guidance on how to cite data is provided in the [AEA Sample References](https://www.aeaweb.org/journals/policies/sample-references) and in [additional guidance](https://social-science-data-editors.github.io/guidance/addtl-data-citation-guidance.html).


### Analysis Data Files

- [ ] No analysis data file mentioned
- [ ] Analysis data files mentioned, not provided (explain reasons below)
- [x] Analysis data files mentioned, provided. File names listed below.

```
./data_intermediate/anon_survey4.dta
```

## Data deposit

### Requirements 

- [x] README is in TXT, MD, PDF format
- [ ] openICPSR deposit has no ZIP files
- [x] Title conforms to guidance (starts with "Data and Code for:" or "Code for:", is properly capitalized)
- [x] Authors (with affiliations) are listed in the same order as on the paper

> [REQUIRED] openICPSR should not have ZIP files visible. ZIP files should be uploaded to openICPSR via "Import from ZIP" instead of "Upload Files". Please delete the ZIP files, and re-upload using the "Import from ZIP" function.

> Detailed guidance is at [https://aeadataeditor.github.io/aea-de-guidance/](https://aeadataeditor.github.io/aea-de-guidance/). 

### Deposit Metadata

- [x] JEL Classification (required)
- [x] Manuscript Number (required)
- [x] Subject Terms (highly recommended)
- [ ] Geographic coverage (highly recommended)
- [ ] Time period(s) (highly recommended)
- [ ] Collection date(s) (suggested)
- [ ] Universe (suggested)
- [ ] Data Type(s) (suggested)
- [ ] Data Source (suggested)
- [ ] Units of Observation (suggested)

- [NOTE] openICPSR metadata is sufficient.

However,

- [SUGGESTED] We suggest you update the openICPSR metadata fields marked as (highly recommended), in order to improve findability of your data and code supplement. 
- [SUGGESTED] We suggest you update the openICPSR metadata fields marked as (suggested), in order to improve findability of your data and code supplement. 


For additional guidance, see [https://aeadataeditor.github.io/aea-de-guidance/data-deposit-aea-guidance.html](https://aeadataeditor.github.io/aea-de-guidance/data-deposit-aea-guidance.html).

Code description
----------------

- Each figure in the article corresponds to specific lines in the provided programs; see "code-check.xlsx" (end of this report) and "Readme.pdf" for details.
- The main analysis programs are written in Stata and the could be executed through the given master program `MASTER.do`.
- The code segment that changes the directories in every programs does not run properly. Manual changes are needed for individual .do file.
- Carthago-Lion p-values is calculated in the program, which takes a long time (could be more than a day in some computers as mentioned in the Readme). 
- No code is provided for Appendix Figure 1 and 3 since they they are not empirical. 
- Code for Appendix Table C-2 could not be identified.

> [SUGGESTED] Please specify hardware requirements, and duration (execution time) for the last run, to allow replicators to assess the computational requirements.

Data checks
-----------
- All datasets are present for this manuscript.
- Data can be read using Stata, and have data variable labels
- Ran PII and results are reported in "pii_stata_output.csv".

Stated Requirements
---------------------

- [ ] No requirements specified
- [x] Software Requirements specified as follows:
  - Stata
- [ ] Computational Requirements specified as follows:
  - Cluster size, etc.
- [ ] Time Requirements specified as follows:
  - Length of necessary computation (hours, weeks, etc.)

- [ ] Requirements are complete.


Missing Requirements
--------------------

- [x] Software Requirements 
  - [x] Stata
    - [x] Version
    - Packages go here
- [x] Computational Requirements specified as follows:
  - Cluster size, disk size, memory size, etc.
- [x] Time Requirements 
  - Length of necessary computation (hours, weeks, etc.)


> [SUGGESTED] While running a [static code scanner for Stata](https://github.com/lydreiner/Statapackagesearch/), we identified  possible Stata packages used in your code. Please verify, and adjust requirements accordingly.

| Package | Rank on whatshot |
|---------|------------------|
| estout  |    2             |
| reghdfe |    5             |

> [REQUIRED] Please amend README to contain complete requirements. 

Computing Environment of the Replicator
---------------------

- CISER Shared Windows Server 2016, 256GB, Intel Xeon E5-4669 v3 @ 2.10Ghz (3 processors)
- Stata/MP 16
 
Replication steps
-----------------
1. Downloaded data and code from the openIPCSR repository. 
2. Fixed directory errors in the all Stata programs and changed the package `fmttable` to `frmttable` in `MASTER.do`.
3. Ran `MASTER.do` per Readme.
4. Reproduced all tables and figures.

> [SUGGESTED] Please add a setup program that installs all packages as noted above. Please specify all necessary commands. An example of a setup file can be found at https://github.com/gslab-econ/template/blob/master/config/config_stata.do

> [REQUIRED] Please provide debugged code, addressing the issues identified in this report.

Findings
--------

- Minor directory issues in the all do-files (the automated directory changing code does not work properly). Manual changes are needed

## Tables

- Table 1: Mostly reproduced (minor difference in F-statistics)
  - Paper: Table 1, Col. 2: **456.783**
  - Reproduced: Table 1, Col 2: **456.812**
- Table 2-7: Fully replicated
- Appendix Table 1-29: Fully replicated
- Appendix Table C-2: Not found

> [REQUIRED] Please adjust your tables to account for the noted numerical discrepancies, or explain (in the README) discrepancies that a replicator should expect. 

## Figures

- Appendix Figure 1: not empirical
- Appendix Figure 2: Fully replicated
- Appendix Figure 3: not empirical
- Appendix Figure 4: Fully replicated
- Appendix Figure 5: Fully replicated


## In-Text Numbers
[x] There are no in-text numbers, or all in-text numbers stem from tables and figures.

[ ] There are in-text numbers, but they are not identified in the code


Classification
--------------

- [ ] full replication
- [x] full replication with minor issues
- [ ] partial replication (see above)
- [ ] not able to replicate most or all of the results (reasons see above)

Code Check Table
----------------
| Figure/Table #    | Program              | Line Number | Replicated?                      |
|-------------------|----------------------|-------------|----------------------------------|
| Table 1           | table1.do            |             | minor difference in F-statistics |
| Table 2           | table2.do            |             | Yes                              |
| Table 3           | table3.do            |             | Yes                              |
| Table 4           | table4.do            |             | Yes                              |
| Table 5           | table5.do            |             | Yes                              |
| Table 6           | table6.do            |             | Yes                              |
| Table 7           | table7.do            |             | Yes                              |
| Appendix Table 1  | appendix_table1.do   |             | Yes                              |
| Appendix Table 2  | appendix_table2.do   |             | Yes                              |
| Appendix Table 3  | appendix_table3.do   |             | Yes                              |
| Appendix Table 4  | appendix_table4.do   |             | Yes                              |
| Appendix Table 5  | appendix_table5ab.do |             | Yes                              |
| Appendix Table 6  | appendix_table6.do   |             | Yes                              |
| Appendix Table 7  | appendix_table7.do   |             | Yes                              |
| Appendix Table 8  | appendix_table8.do   |             | Yes                              |
| Appendix Table 9  | appendix_table9.do   |             | Yes                              |
| Appendix Table 10 | appendix_table10.do  |             | Yes                              |
| Appendix Table 11 | appendix_table11.do  |             | Yes                              |
| Appendix Table 12 | appendix_table12.do  |             | Yes                              |
| Appendix Table 13 | appendix_table13.do  |             | Yes                              |
| Appendix Table 14 | appendix_table14.do  |             | Yes                              |
| Appendix Table 15 | appendix_table15.do  |             | Yes                              |
| Appendix Table 16 | appendix_table16.do  |             | Yes                              |
| Appendix Table 17 | appendix_table17.do  |             | Yes                              |
| Appendix Table 18 | appendix_table18.do  |             | Yes                              |
| Appendix Table 19 | appendix_table19.do  |             | Yes                              |
| Appendix Table 20 | appendix_table20.do  |             | Yes                              |
| Appendix Table 21 | appendix_table21.do  |             | Yes                              |
| Appendix Table 22 | appendix_table22.do  |             | Yes                              |
| Appendix Table 23 | appendix_table23.do  |             | Yes                              |
| Appendix Table 24 | appendix_table24.do  |             | Yes                              |
| Appendix Table 25 | appendix_table25.do  |             | Yes                              |
| Appendix Table 26 | appendix_table26.do  |             | Yes                              |
| Appendix Table 27 | appendix_table27.do  |             | Yes                              |
| Appendix Table 28 | appendix_table28.do  |             | Yes                              |
| Appendix Table 29 | appendix_table29.do  |             | Yes                              |
| Appendix Table C-2|   not found          |             | **No** |
| Appendix Figure 1 | not empirical        |             | N/A                              |
| Appendix Figure 2 | appendix_figure2.do  |             | Yes                              |
| Appendix Figure 3 | not empirical        |             | N/A                              |
| Appendix Figure 4 | appendix_figure4.do  |             | Yes                              |
| Appendix Figure 5 | appendix_figure5.do  |             | Yes                              |