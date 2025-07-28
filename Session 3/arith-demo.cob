       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARITHMETIC-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       * Declare variables
       01  NUM1         PIC 9(4) VALUE 20.
       01  NUM2         PIC 9(4) VALUE 4.
       01  RESULT       PIC 9(5).
       01  REMAINDER    PIC 9(2).

       PROCEDURE DIVISION.

       * Addition
           ADD NUM1 TO NUM2 GIVING RESULT.
           DISPLAY "Addition (NUM1 + NUM2): " RESULT.

       * Subtraction
           SUBTRACT NUM2 FROM NUM1 GIVING RESULT.
           DISPLAY "Subtraction (NUM1 - NUM2): " RESULT.

       * Multiplication
           MULTIPLY NUM1 BY NUM2 GIVING RESULT.
           DISPLAY "Multiplication (NUM1 * NUM2): " RESULT.

       * Division
           DIVIDE NUM1 BY NUM2 GIVING RESULT REMAINDER REMAINDER.
           DISPLAY "Division (NUM1 / NUM2): " RESULT.
           DISPLAY "Remainder: " REMAINDER.

       * Compute (e.g., (NUM1 + NUM2) * 3)
           COMPUTE RESULT = (NUM1 + NUM2) * 3.
           DISPLAY "Compute ((NUM1 + NUM2) * 3): " RESULT.

       * End program
           STOP RUN.
