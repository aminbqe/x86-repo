# Byte-array exchange

`exchange_a_b.asm` is intended to exchange 100 bytes between two memory areas addressed by `SI` and `DI`.

## Intended algorithm

- Set `CX` to 100.
- Read one byte from each array.
- Exchange the two byte values.
- Write them back through `[SI]` and `[DI]`.
- Increment both pointers and repeat with `LOOP`.

## Important correction needed

The checked-in lines `MOV AL, SI` and `MOV AH, DI` use 16-bit source registers with 8-bit destinations, so they are not valid 8086 instructions. To implement the stated intent they should read memory, for example `MOV AL, [SI]` and `MOV AH, [DI]`.
