# COBOL Chronicles: Session 01 — Hello World

**Snapshot**
- First COBOL program
- Classic greeting output

**Files**
| File | Purpose |
| --- | --- |
| helloworld.cob | Prints a hello message |

**Key Steps**
1. Define `PROGRAM-ID`.
2. Use `DISPLAY` to show text.
3. End with `STOP RUN`.

**Snippet**
```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.

       PROCEDURE DIVISION.
           DISPLAY "Hello, World from COBOL!".
           STOP RUN.
```
