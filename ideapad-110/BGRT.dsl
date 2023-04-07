/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of BGRT.bin, Thu Apr  6 17:33:32 2023
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : F3
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00000002

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 00000000B8182018
[030h 0048 004h]               Image OffsetX : 00000199
[034h 0052 004h]               Image OffsetY : 0000008B

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 F3 4C 45 4E 4F 56 4F  // BGRT8.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 02 00 00 00 50 54 45 43  // CB-01   ....PTEC
    0020: 02 00 00 00 01 00 01 00 18 20 18 B8 00 00 00 00  // ......... ......
    0030: 99 01 00 00 8B 00 00 00                          // ........
