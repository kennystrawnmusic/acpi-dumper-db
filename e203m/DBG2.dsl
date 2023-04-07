/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of DBG2.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [DBG2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "DBG2"    [Debug Port Table type 2]
[004h 0004 004h]                Table Length : 00000072
[008h 0008 001h]                    Revision : 00
[009h 0009 001h]                    Checksum : DE
[00Ah 0010 006h]                      Oem ID : "INTEL "
[010h 0016 008h]                Oem Table ID : "GLK-SOC "
[018h 0024 004h]                Oem Revision : 00000003
[01Ch 0028 004h]             Asl Compiler ID : "BRXT"
[020h 0032 004h]       Asl Compiler Revision : 0100000D

[024h 0036 004h]                 Info Offset : 0000002C
[028h 0040 004h]                  Info Count : 00000001

[02Ch 0044 001h]                    Revision : 00
[02Dh 0045 002h]                      Length : 0046
[02Fh 0047 001h]              Register Count : 01
[030h 0048 002h]             Namepath Length : 0020
[032h 0050 002h]             Namepath Offset : 0026
[034h 0052 002h]             OEM Data Length : 0000 [Optional field not present]
[036h 0054 002h]             OEM Data Offset : 0000 [Optional field not present]
[038h 0056 002h]                   Port Type : 8000
[03Ah 0058 002h]                Port Subtype : 0000
[03Ch 0060 002h]                    Reserved : 0000
[03Eh 0062 002h]         Base Address Offset : 0016
[040h 0064 002h]         Address Size Offset : 0022

[042h 0066 00Ch]       Base Address Register : [Generic Address Structure]
[042h 0066 001h]                    Space ID : 00 [SystemMemory]
[043h 0067 001h]                   Bit Width : 08
[044h 0068 001h]                  Bit Offset : 00
[045h 0069 001h]        Encoded Access Width : 00 [Undefined/Legacy]
[046h 0070 008h]                     Address : 0000000000000000

[04Eh 0078 004h]                Address Size : 0000000C

[052h 0082 002h]                    Namepath : "."

Raw Table Data: Length 114 (0x72)

    0000: 44 42 47 32 72 00 00 00 00 DE 49 4E 54 45 4C 20  // DBG2r.....INTEL 
    0010: 47 4C 4B 2D 53 4F 43 20 03 00 00 00 42 52 58 54  // GLK-SOC ....BRXT
    0020: 0D 00 00 01 2C 00 00 00 01 00 00 00 00 46 00 01  // ....,........F..
    0030: 20 00 26 00 00 00 00 00 00 80 00 00 00 00 16 00  //  .&.............
    0040: 22 00 00 08 00 00 00 00 00 00 00 00 00 00 0C 00  // "...............
    0050: 00 00 2E 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00                                            // ..
