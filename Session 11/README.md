# COBOL Chronicles: Session 11 – Paragraphs

This session focuses on program structure using paragraphs and `PERFORM`.

## Goals

- Break logic into paragraphs
- Use `PERFORM` to control flow
- Keep programs readable and modular

## File Created

- paragraph-demo.cob

## Code (Excerpt)

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PARAGRAPH-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 COUNTER PIC 9 VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PARA.
           PERFORM INIT-PARA
           PERFORM PROCESS-PARA
           PERFORM FINISH-PARA
           STOP RUN.

       INIT-PARA.
           DISPLAY "Starting loop...".

       PROCESS-PARA.
           PERFORM VARYING COUNTER FROM 1 BY 1 UNTIL COUNTER > 3
               DISPLAY "Step " COUNTER
           END-PERFORM.

       FINISH-PARA.
           DISPLAY "Done.".
```
