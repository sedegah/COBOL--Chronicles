# COBOL Chronicles: Session 03 – Arithmetic Demo

**Quick Summary**
This program showcases the classic COBOL arithmetic verbs plus `COMPUTE`.

**Operations Covered**
- ADD, SUBTRACT, MULTIPLY, DIVIDE
- COMPUTE with a compound expression

**File**
- arith-demo.cob

**Structure Map**
1. IDENTIFICATION DIVISION
2. DATA DIVISION
3. PROCEDURE DIVISION

**Peek (short)**
```text
	ADD NUM1 TO NUM2 GIVING RESULT.
	SUBTRACT NUM2 FROM NUM1 GIVING RESULT.
	COMPUTE RESULT = (NUM1 + NUM2) * 3.

