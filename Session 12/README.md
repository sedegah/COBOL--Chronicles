# COBOL Chronicles: Session 12 – Mini Project (Student Average)

This session ties together input, tables, and arithmetic to compute an average score.

## Goals

- Use a small table with `OCCURS`
- Collect user input with `ACCEPT`
- Compute and display an average

## File Created

- student-average.cob

## Code (Excerpt)

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STUDENT-AVERAGE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SCORES.
           05 SCORE PIC 9(3) OCCURS 3 TIMES.
       77 I      PIC 9 VALUE 1.
       77 TOTAL  PIC 9(4) VALUE 0.
       77 AVG    PIC 9(3)V9(2).

       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
               DISPLAY "Enter score " I ": "
               ACCEPT SCORE(I)
               ADD SCORE(I) TO TOTAL
           END-PERFORM.

           COMPUTE AVG = TOTAL / 3.
           DISPLAY "Average score: " AVG.

           STOP RUN.
```
