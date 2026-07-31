# Exchange two 16-bit values with `XCHG`

`data_exchange2.asm` swaps two words in memory using the 8086 `XCHG` instruction.

## Steps

1. Loads the first word into `SI`.
2. Exchanges `SI` with the word at the second address.
3. Exchanges `SI` with the word at the first address.

After the two exchanges, both memory locations have swapped values and `SI` contains the original first word.

## Note

Like the register-based variant, the example uses offsets `0001h` and `0003h`. These are overlapping byte ranges for 16-bit data; choose non-overlapping offsets when running the example.
