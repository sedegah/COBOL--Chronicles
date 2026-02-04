# COBOL Chronicles: Session 10 – Dates

**Focus**: date retrieval + simple parsing

**Mapping**
- YYYY = positions 1–4
- MM   = positions 5–6
- DD   = positions 7–8

**Files**
- date-demo.cob

### Example

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
