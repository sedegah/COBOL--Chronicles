# COBOL Chronicles: Session 8 – User Input

This session covers basic console input using `ACCEPT`.

## Goals

- Prompt the user with `DISPLAY`
- Read values using `ACCEPT`
- Echo input back to the console

## File Created

- input-demo.cob

## Code (Excerpt)

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INPUT-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 USER-NAME PIC X(20).
       77 USER-AGE  PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Enter your name: ".
           ACCEPT USER-NAME.
           DISPLAY "Enter your age: ".
           ACCEPT USER-AGE.

           DISPLAY "Hello " USER-NAME " - Age: " USER-AGE.

           STOP RUN.
```
