# COBOL Chronicles: Session 08 – User Input

**Flow**
1. `DISPLAY` prompt
2. `ACCEPT` response
3. Echo back

**Files**
- input-demo.cob

### Example

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
