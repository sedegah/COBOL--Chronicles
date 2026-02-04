# COBOL Chronicles: Session 10 – Dates

This session shows how to retrieve and format the current date using `FUNCTION CURRENT-DATE`.

## Goals

- Use `FUNCTION CURRENT-DATE`
- Parse year, month, and day
- Display a formatted date string

## File Created

- date-demo.cob

## Code (Excerpt)

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATE-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 CURRENT-DATE-RAW PIC X(21).
       77 YEAR             PIC 9(4).
       77 MONTH            PIC 9(2).
       77 DAY              PIC 9(2).

       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE TO CURRENT-DATE-RAW.
           MOVE CURRENT-DATE-RAW(1:4) TO YEAR.
           MOVE CURRENT-DATE-RAW(5:2) TO MONTH.
           MOVE CURRENT-DATE-RAW(7:2) TO DAY.

           DISPLAY "Today is: " YEAR "-" MONTH "-" DAY.

           STOP RUN.
```
