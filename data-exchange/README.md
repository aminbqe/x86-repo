# Exchange two 16-bit memory values

`data_exchange.asm` swaps two 16-bit values by using general-purpose registers as temporary storage.

## Steps

1. Places example words at offsets `0001h` and `0003h`.
2. Loads their addresses into registers.
3. Reads the first value into `AX` and the second into `CX`.
4. Stores `CX` at the first address and `AX` at the second address.

## Note

The example word offsets (`0001h` and `0003h`) are unaligned and overlap by one byte. For two independent 16-bit values, use non-overlapping offsets such as `0000h` and `0002h`.
