# COBOL Chronicles: Session 1 - Hello World

Welcome to the first entry in my journey to learning COBOL, one of the oldest and most legendary programming languages in the world of computing.

---

##  What I Did

###  Created My First COBOL Program
- File: `helloworld.cob`
- Purpose: Display the classic "Hello, World from COBOL!" message
- Compiler: [GnuCOBOL](https://gnucobol.sourceforge.io/)

### Code

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.

       PROCEDURE DIVISION.
           DISPLAY "Hello, World from COBOL!".
           STOP RUN.
