# COBOL Arithmetic Operations Demo

This COBOL program demonstrates basic arithmetic operations using standard COBOL statements. It is designed for educational purposes to help beginners understand how arithmetic is performed in COBOL.

## Features

The program performs the following operations using two predefined numbers (`NUM1 = 20` and `NUM2 = 4`):

- **Addition** using the `ADD` statement
- **Subtraction** using the `SUBTRACT` statement
- **Multiplication** using the `MULTIPLY` statement
- **Division** using the `DIVIDE` statement
- **Computation** using the `COMPUTE` statement with a compound expression

## Code Structure

The program is organized into the following COBOL divisions:

- **IDENTIFICATION DIVISION**: Program metadata
- **DATA DIVISION**: Variable declarations
- **PROCEDURE DIVISION**: Execution logic with arithmetic operations and output

## How to Run

1. Install [GnuCOBOL](https://sourceforge.net/projects/gnucobol/):
   - On Ubuntu/Debian:
     ```bash
     sudo apt install open-cobol
     ```
   - On macOS (via Homebrew):
     ```bash
     brew install gnu-cobol
     ```

2. Save the program to a file, e.g., `arith-demo.cob`.

3. Compile and run:
   ```bash
   cobc -x arith-demo.cob -o arithdemo
   ./arithdemo
