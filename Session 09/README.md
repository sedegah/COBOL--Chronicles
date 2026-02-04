# COBOL Chronicles: Session 09 – Numeric Editing

**Why this matters**
Edited PIC clauses make numeric output report-ready.

**Highlights**
- Decimal totals
- Currency-style formats
- Mini report output

**Files**
- report-demo.cob

### Example

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REPORT-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 SALARY        PIC 9(5)V99 VALUE 5234.75.
       77 BONUS         PIC 9(4)V99 VALUE 350.50.
       77 TOTAL         PIC 9(6)V99.
       77 EDITED-TOTAL  PIC $$,$$9.99.
       77 EDITED-SALARY PIC $$,$$9.99.
       77 EDITED-BONUS  PIC $$,$$9.99.

       PROCEDURE DIVISION.
           COMPUTE TOTAL = SALARY + BONUS.

           MOVE SALARY TO EDITED-SALARY.
           MOVE BONUS TO EDITED-BONUS.
           MOVE TOTAL TO EDITED-TOTAL.

           DISPLAY "Salary: " EDITED-SALARY.
           DISPLAY "Bonus : " EDITED-BONUS.
           DISPLAY "Total : " EDITED-TOTAL.

           STOP RUN.
```
