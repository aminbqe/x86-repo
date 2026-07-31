# Multiply by 24 using shifts

`shift_multiply.asm` calculates `50 × 24` without using `MUL`.

## Method

Because `24 = 8 + 16`, the program:

1. Shifts `AX` left three places to calculate `50 × 8`.
2. Adds that value to `BX`.
3. Shifts `AX` left one more place to calculate `50 × 16`.
4. Adds it to `BX`.

The final result is `1200` decimal (`04B0h`) in `BX`.
