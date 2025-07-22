# COBOL Chronicles: Session 2 – Variables and Arithmetic

In this session, I explored how COBOL handles data declarations and arithmetic operations using the `DATA DIVISION` and `PROCEDURE DIVISION`.

## Goals

- Learn how to declare and use variables
- Perform basic arithmetic (addition, subtraction, multiplication, division)
- Display calculated results using `DISPLAY`

## File Created

- `calculator.cob`: Performs basic arithmetic operations using user-defined variables.

## Program Structure

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-CALCULATOR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUM1        PIC 9(3) VALUE 25.
       77 NUM2        PIC 9(3) VALUE 5.
       77 SUM         PIC 9(4).
       77 DIFFERENCE  PIC 9(4).
       77 PRODUCT     PIC 9(4).
       77 QUOTIENT    PIC 9(4).

       PROCEDURE DIVISION.
           ADD NUM1 TO NUM2 GIVING SUM.
           SUBTRACT NUM2 FROM NUM1 GIVING DIFFERENCE.
           MULTIPLY NUM1 BY NUM2 GIVING PRODUCT.
           DIVIDE NUM1 BY NUM2 GIVING QUOTIENT.

           DISPLAY "Addition Result: " SUM.
           DISPLAY "Subtraction Result: " DIFFERENCE.
           DISPLAY "Multiplication Result: " PRODUCT.
           DISPLAY "Division Result: " QUOTIENT.

           STOP RUN.
