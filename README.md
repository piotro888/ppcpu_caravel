# PPCPU

Submission of [pipelined pcpu](https://github.com/piotro888/ppcpu) to openMPW shuttle.

## About ppcpu

ppcpu is a 16-bit RISC processor, with designed from scratch architecture. This is 3rd revision of processor, which started as personal project back in 2020.

## Features
* Outside bus interface for memory and devices
* Instruction and data caches
* Custom PCPU ISA
* Memory paging
* 4 stage pipeline

## Tests

Basic boot test is included in `verilog/dv/la_test1`.

Rest of tests for cpu and ISA are included in `ppcpu` repo.

## Docs

For ISA docs see `pcpu` and `ppcpu` repositories. 

## License

See `LICENSE` file
