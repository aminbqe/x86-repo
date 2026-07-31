# 8086 Byte Counter

This repository contains an Intel 8086 assembly exercise that scans bytes and records occurrence counts.

## Files

- `byte_counter.asm` — original source from the course exercise.

## Intended approach

The program uses 8086 registers and string instructions:

- `BX` walks through source bytes.
- `CX` supplies the loop count.
- `AL` holds the byte being searched.
- `SCASB` compares `AL` with the byte at `ES:DI`.
- `DX` accumulates a matching-byte count.
- Results are intended to be stored beginning at offset `0100h`.

## Notes

This is preserved as the original exercise source. It may need cleanup before assembling or running in an 8086 emulator/assembler:

- `TEST DX` is incomplete on 8086; `TEST` needs two operands.
- `SCASB` depends on `ES:DI`, so segment and index initialization must match the intended data layout.
- The comments reference unspecified input addresses and data length.
