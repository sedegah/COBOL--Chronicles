       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITION-DEMO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 SCORE        PIC 9(3) VALUE 85.
       77 GRADE        PIC X.
       77 MESSAGE      PIC X(20).

       PROCEDURE DIVISION.
           EVALUATE TRUE
               WHEN SCORE >= 90
                   MOVE "A" TO GRADE
               WHEN SCORE >= 80
                   MOVE "B" TO GRADE
               WHEN SCORE >= 70
                   MOVE "C" TO GRADE
               WHEN OTHER
                   MOVE "F" TO GRADE
           END-EVALUATE.

           IF GRADE = "F"
               MOVE "Needs Improvement" TO MESSAGE
           ELSE
               MOVE "Passed" TO MESSAGE
           END-IF.

           DISPLAY "Score: " SCORE.
           DISPLAY "Grade: " GRADE.
           DISPLAY "Status: " MESSAGE.

           STOP RUN.
