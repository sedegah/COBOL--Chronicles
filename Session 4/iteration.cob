       IDENTIFICATION DIVISION.
       PROGRAM-ID. LoopExample.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  COUNTER         PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
           PERFORM UNTIL COUNTER > 5
               DISPLAY "This is loop number: " COUNTER
               ADD 1 TO COUNTER
           END-PERFORM.

           STOP RUN.
