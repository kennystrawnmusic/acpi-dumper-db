/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of HPET.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [HPET]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "HPET"    [High Precision Event Timer Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 5D
[00Ah 0010 006h]                      Oem ID : "INTEL "
[010h 0016 008h]                Oem Table ID : "GLK-SOC "
[018h 0024 004h]                Oem Revision : 00000003
[01Ch 0028 004h]             Asl Compiler ID : "BRXT"
[020h 0032 004h]       Asl Compiler Revision : 0100000D

[024h 0036 004h]           Hardware Block ID : 8086A701

[028h 0040 00Ch]        Timer Block Register : [Generic Address Structure]
[028h 0040 001h]                    Space ID : 00 [SystemMemory]
[029h 0041 001h]                   Bit Width : 40
[02Ah 0042 001h]                  Bit Offset : 00
[02Bh 0043 001h]        Encoded Access Width : 00 [Undefined/Legacy]
[02Ch 0044 008h]                     Address : 00000000FED00000

[034h 0052 001h]             Sequence Number : 00
[035h 0053 002h]         Minimum Clock Ticks : 0080
[037h 0055 001h]       Flags (decoded below) : 00
                             4K Page Protect : 0
                            64K Page Protect : 0

Raw Table Data: Length 56 (0x38)

    0000: 48 50 45 54 38 00 00 00 01 5D 49 4E 54 45 4C 20  // HPET8....]INTEL 
    0010: 47 4C 4B 2D 53 4F 43 20 03 00 00 00 42 52 58 54  // GLK-SOC ....BRXT
    0020: 0D 00 00 01 01 A7 86 80 00 40 00 00 00 00 D0 FE  // .........@......
    0030: 00 00 00 00 00 80 00 00                          // ........
