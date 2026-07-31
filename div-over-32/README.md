# Multiword right shift

`div_over_32.asm` implements a five-bit logical right shift across a value stored as 16-bit words in memory.

## Approach

For each output word, the program:

1. Shifts the current 16-bit word right by five bits.
2. Takes the low five bits of the following word.
3. Shifts those bits left by eleven positions.
4. Combines both parts with `OR`.

The source sets `DS` to `3276h`, reads words from offsets beginning at `0000h`, and writes results beginning at `0040h`.

## Note

This is an 8086-style multiword-shift exercise. The final step reads offset `0008h`; ensure the input layout includes that next word if the intended value spans more than four words.
