/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of BGRT.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 90
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 01072009
[01Ch 0028 004h]             Asl Compiler ID : "AMI "
[020h 0032 004h]       Asl Compiler Revision : 00010013

[024h 0036 002h]                     Version : 0001
[026h 0038 001h]      Status (decoded below) : 01
                                   Displayed : 1
                          Orientation Offset : 0
[027h 0039 001h]                  Image Type : 00
[028h 0040 008h]               Image Address : 0000000073646018
[030h 0048 004h]               Image OffsetX : 0000020A
[034h 0052 004h]               Image OffsetY : 00000133

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 90 5F 41 53 55 53 5F  // BGRT8....._ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 09 20 07 01 41 4D 49 20  // Notebook. ..AMI 
    0020: 13 00 01 00 01 00 01 00 18 60 64 73 00 00 00 00  // .........`ds....
    0030: 0A 02 00 00 33 01 00 00                          // ....3...
