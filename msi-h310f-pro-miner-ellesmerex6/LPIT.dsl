/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of LPIT.bin, Thu Apr  6 17:33:54 2023
 *
 * ACPI Data Table [LPIT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "LPIT"    [Low Power Idle Table]
[004h 0004 004h]                Table Length : 0000005C
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 78
[00Ah 0010 006h]                      Oem ID : "INTEL "
[010h 0016 008h]                Oem Table ID : "A M I "
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "    "
[020h 0032 004h]       Asl Compiler Revision : 01000013

[024h 0036 004h]               Subtable Type : 00000000 [Native C-state Idle Structure]
[028h 0040 004h]                      Length : 00000038
[02Ch 0044 002h]                   Unique ID : 0000
[02Eh 0046 002h]                    Reserved : 0000
[030h 0048 004h]       Flags (decoded below) : 00000000
                              State Disabled : 0
                                  No Counter : 0

[034h 0052 00Ch]               Entry Trigger : [Generic Address Structure]
[034h 0052 001h]                    Space ID : 7F [FunctionalFixedHW]
[035h 0053 001h]                   Bit Width : 01
[036h 0054 001h]                  Bit Offset : 02
[037h 0055 001h]        Encoded Access Width : 00 [Undefined/Legacy]
[038h 0056 008h]                     Address : 0000000000000060

[040h 0064 004h]                   Residency : 00007530
[044h 0068 004h]                     Latency : 00000BB8
[048h 0072 00Ch]           Residency Counter : [Generic Address Structure]
[048h 0072 001h]                    Space ID : 00 [SystemMemory]
[049h 0073 001h]                   Bit Width : 20
[04Ah 0074 001h]                  Bit Offset : 00
[04Bh 0075 001h]        Encoded Access Width : 03 [DWord Access:32]
[04Ch 0076 008h]                     Address : 00000000FE00193C

[054h 0084 008h]           Counter Frequency : 000000000000256C


Raw Table Data: Length 92 (0x5C)

    0000: 4C 50 49 54 5C 00 00 00 01 78 49 4E 54 45 4C 20  // LPIT\....xINTEL 
    0010: 41 20 4D 20 49 20 00 00 02 00 00 00 20 20 20 20  // A M I ......    
    0020: 13 00 00 01 00 00 00 00 38 00 00 00 00 00 00 00  // ........8.......
    0030: 00 00 00 00 7F 01 02 00 60 00 00 00 00 00 00 00  // ........`.......
    0040: 30 75 00 00 B8 0B 00 00 00 20 00 03 3C 19 00 FE  // 0u....... ..<...
    0050: 00 00 00 00 6C 25 00 00 00 00 00 00              // ....l%......
