# COBOL Chronicles: Session 6 – Strings

This session explores common string operations with `STRING` and `INSPECT`.

## Goals

- Build a full name using `STRING`
- Extract initials using reference modification
- Replace characters with `INSPECT`

## File Created

- string-demo.cob

## Code (Excerpt)

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. STRING-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 FIRST-NAME  PIC X(10) VALUE "Ada".
       77 LAST-NAME   PIC X(10) VALUE "Lovelace".
       77 FULL-NAME   PIC X(25).
       77 INITIALS    PIC X(2).
       77 DASHED-NAME PIC X(25).

       PROCEDURE DIVISION.
           STRING FIRST-NAME DELIMITED BY SPACE
                  " " DELIMITED BY SIZE
                  LAST-NAME DELIMITED BY SPACE
                  INTO FULL-NAME
           END-STRING.

           MOVE FIRST-NAME(1:1) TO INITIALS(1:1)
           MOVE LAST-NAME(1:1) TO INITIALS(2:1)

           MOVE FULL-NAME TO DASHED-NAME
           INSPECT DASHED-NAME REPLACING ALL " " BY "-".

           DISPLAY "Full Name: " FULL-NAME.
           DISPLAY "Initials: " INITIALS.
           DISPLAY "Dashed: " DASHED-NAME.

           STOP RUN.
```
