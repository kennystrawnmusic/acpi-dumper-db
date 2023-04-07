/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of TPM2.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [TPM2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "TPM2"    [Trusted Platform Module hardware interface Table]
[004h 0004 004h]                Table Length : 00000034
[008h 0008 001h]                    Revision : 04
[009h 0009 001h]                    Checksum : 59
[00Ah 0010 006h]                      Oem ID : "_ASUS_"
[010h 0016 008h]                Oem Table ID : "Notebook"
[018h 0024 004h]                Oem Revision : 00000001
[01Ch 0028 004h]             Asl Compiler ID : "AMI "
[020h 0032 004h]       Asl Compiler Revision : 00000000

[024h 0036 002h]              Platform Class : 0000
[026h 0038 002h]                    Reserved : 0000
[028h 0040 008h]             Control Address : 00000000FED40040
[030h 0048 004h]                Start Method : 07 [Command Response Buffer]

/**** ACPI table terminates in the middle of a data structure! (dump table) 
CurrentOffset: 34, TableLength: 34 ***/
Raw Table Data: Length 52 (0x34)

    0000: 54 50 4D 32 34 00 00 00 04 59 5F 41 53 55 53 5F  // TPM24....Y_ASUS_
    0010: 4E 6F 74 65 62 6F 6F 6B 01 00 00 00 41 4D 49 20  // Notebook....AMI 
    0020: 00 00 00 00 00 00 00 00 40 00 D4 FE 00 00 00 00  // ........@.......
    0030: 07 00 00 00                                      // ....
