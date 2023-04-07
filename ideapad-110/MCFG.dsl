/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of MCFG.bin, Thu Apr  6 17:33:32 2023
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "MCFG"    [Memory Mapped Configuration Table]
[004h 0004 004h]                Table Length : 0000003C
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : F9
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00000002

[024h 0036 008h]                    Reserved : 0000000000000000

[02Ch 0044 008h]                Base Address : 00000000F8000000
[034h 0052 002h]        Segment Group Number : 0000
[036h 0054 001h]            Start Bus Number : 00
[037h 0055 001h]              End Bus Number : 3F
[038h 0056 004h]                    Reserved : 00000000

Raw Table Data: Length 60 (0x3C)

    0000: 4D 43 46 47 3C 00 00 00 01 F9 4C 45 4E 4F 56 4F  // MCFG<.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 02 00 00 00 50 54 45 43  // CB-01   ....PTEC
    0020: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F8  // ................
    0030: 00 00 00 00 00 00 00 3F 00 00 00 00              // .......?....
