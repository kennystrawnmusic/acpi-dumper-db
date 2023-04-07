/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of TPM2.bin, Thu Apr  6 17:33:32 2023
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "TPM2"    [Trusted Platform Module hardware interface Table]
[004h 0004 004h]                Table Length : 00000034
[008h 0008 001h]                    Revision : 03
[009h 0009 001h]                    Checksum : D0
[00Ah 0010 006h]                      Oem ID : "AMD   "
[010h 0016 008h]                Oem Table ID : "AGESA   "
[018h 0024 004h]                Oem Revision : 00000000
[01Ch 0028 004h]             Asl Compiler ID : "ACPI"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 004h]                    Reserved : 00000000
[028h 0040 008h]             Control Address : 00000000F0C00010
[030h 0048 004h]                Start Method : 00000002
/**** ACPI table terminates in the middle of a data structure! (dump table) 
CurrentOffset: 34, TableLength: 34 ***/
Raw Table Data: Length 52 (0x34)

    0000: 54 50 4D 32 34 00 00 00 03 D0 41 4D 44 20 20 20  // TPM24.....AMD   
    0010: 41 47 45 53 41 20 20 20 00 00 00 00 41 43 50 49  // AGESA   ....ACPI
    0020: 00 00 04 00 00 00 00 00 10 00 C0 F0 00 00 00 00  // ................
    0030: 02 00 00 00                                      // ....
