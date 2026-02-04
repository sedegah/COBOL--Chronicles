# COBOL Chronicles: Session 02 – Variables and Arithmetic

**Focus:** data declarations + basic math

**Checklist**
- [x] Declare numeric fields in `WORKING-STORAGE`
- [x] Run four arithmetic verbs
- [x] Display results

**File**
- calculator.cob

**Variables Used**
- `NUM1`, `NUM2`, `SUM`, `DIFFERENCE`, `PRODUCT`, `QUOTIENT`

**Core Block**
```cobol
    ADD NUM1 TO NUM2 GIVING SUM.
    SUBTRACT NUM2 FROM NUM1 GIVING DIFFERENCE.
    MULTIPLY NUM1 BY NUM2 GIVING PRODUCT.
    DIVIDE NUM1 BY NUM2 GIVING QUOTIENT.

    DISPLAY "Addition Result: " SUM.
    DISPLAY "Subtraction Result: " DIFFERENCE.
    DISPLAY "Multiplication Result: " PRODUCT.
    DISPLAY "Division Result: " QUOTIENT.
```
