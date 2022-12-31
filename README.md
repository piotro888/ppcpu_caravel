# PPCPU

Submission of [pipelined pcpu](https://github.com/piotro888/ppcpu) to openMPW shuttle.

`Edition: MPW-8`

## About ppcpu

`ppcpu` is a 16-bit RISC processor, with designed from scratch architecture. This is 3rd(.1) revision of processor, which started as little project back in 2020.

This is version 2.2 of ppcpu with many improvements and two cores. 

## Features
* Outside bus interface for memory and devices
* 2 cores
* Instruction and data caches
* Custom PCPU ISA
* Memory paging
* 4 stage pipeline
* Microcontroller mode with intergrated memory

## Tests

Boot tests are  is included in `verilog/dv/`.
See README in this directory for description of testbenches

Rest of tests for cpu and ISA are included in `ppcpu` repo.

## Docs

For ISA docs see `pcpu` and `ppcpu` repositories. 

## License

See `LICENSE` file
