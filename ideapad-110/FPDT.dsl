/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of FPDT.bin, Thu Apr  6 17:33:32 2023
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004 004h]                Table Length : 00000044
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : C5
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00000002


[024h 0036 002h]               Subtable Type : 0000
[026h 0038 001h]                      Length : 10
[027h 0039 001h]                    Revision : 01
[028h 0040 004h]                    Reserved : 00000000
[02Ch 0044 008h]    FPDT Boot Record Address : 00000000BD729118

[034h 0052 002h]               Subtable Type : 0001
[036h 0054 001h]                      Length : 10
[037h 0055 001h]                    Revision : 01
[038h 0056 004h]                    Reserved : 00000000
[03Ch 0060 008h]         S3PT Record Address : 00000000BD729098

Raw Table Data: Length 68 (0x44)

    0000: 46 50 44 54 44 00 00 00 01 C5 4C 45 4E 4F 56 4F  // FPDTD.....LENOVO
    0010: 43 42 2D 30 31 20 20 20 02 00 00 00 50 54 45 43  // CB-01   ....PTEC
    0020: 02 00 00 00 00 00 10 01 00 00 00 00 18 91 72 BD  // ..............r.
    0030: 00 00 00 00 01 00 10 01 00 00 00 00 98 90 72 BD  // ..............r.
    0040: 00 00 00 00                                      // ....
