# COBOL Chronicles: Session 7 – Tables and Loops

This session introduces arrays (tables) and loop control with `PERFORM VARYING`.

## Goals

- Define a table with `OCCURS`
- Populate values in a loop
- Compute totals and averages

## File Created

- table-demo.cob

## Code (Excerpt)

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLE-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUMBERS.
           05 NUM PIC 9(3) OCCURS 5 TIMES.
       77  I      PIC 9 VALUE 1.
       77  TOTAL  PIC 9(4) VALUE 0.
       77  AVG    PIC 9(3)V9(2).

       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               COMPUTE NUM(I) = I * 10
               ADD NUM(I) TO TOTAL
           END-PERFORM.

           COMPUTE AVG = TOTAL / 5.

           DISPLAY "Numbers: " NUM(1) " " NUM(2) " " NUM(3) " " NUM(4) " " NUM(5).
           DISPLAY "Total: " TOTAL.
           DISPLAY "Average: " AVG.

           STOP RUN.
```
