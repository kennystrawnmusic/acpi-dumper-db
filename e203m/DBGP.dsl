/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of DBGP.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [DBGP]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "DBGP"    [Debug Port Table]
[004h 0004 004h]                Table Length : 00000034
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : A9
[00Ah 0010 006h]                      Oem ID : "INTEL "
[010h 0016 008h]                Oem Table ID : "GLK-SOC "
[018h 0024 004h]                Oem Revision : 00000003
[01Ch 0028 004h]             Asl Compiler ID : "BRXT"
[020h 0032 004h]       Asl Compiler Revision : 0100000D

[024h 0036 001h]              Interface Type : 00
[025h 0037 003h]                    Reserved : 000000

[028h 0040 00Ch]         Debug Port Register : [Generic Address Structure]
[028h 0040 001h]                    Space ID : 00 [SystemMemory]
[029h 0041 001h]                   Bit Width : 08
[02Ah 0042 001h]                  Bit Offset : 00
[02Bh 0043 001h]        Encoded Access Width : 00 [Undefined/Legacy]
[02Ch 0044 008h]                     Address : 0000000000000000


Raw Table Data: Length 52 (0x34)

    0000: 44 42 47 50 34 00 00 00 01 A9 49 4E 54 45 4C 20  // DBGP4.....INTEL 
    0010: 47 4C 4B 2D 53 4F 43 20 03 00 00 00 42 52 58 54  // GLK-SOC ....BRXT
    0020: 0D 00 00 01 00 00 00 00 00 08 00 00 00 00 00 00  // ................
    0030: 00 00 00 00                                      // ....
