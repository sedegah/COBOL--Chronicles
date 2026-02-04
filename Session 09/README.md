# COBOL Chronicles: Session 9 – Numeric Editing

This session demonstrates formatted numeric output using edited PIC clauses.

## Goals

- Compute totals with decimals
- Format numbers with editing symbols
- Present a mini report

## File Created

- report-demo.cob

## Code (Excerpt)

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
