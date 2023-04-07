/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of APIC.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [APIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "APIC"    [Multiple APIC Description Table (MADT)]
[004h 0004 004h]                Table Length : 00000084
[008h 0008 001h]                    Revision : 04
[009h 0009 001h]                    Checksum : D6
[00Ah 0010 006h]                      Oem ID : "INTEL "
[010h 0016 008h]                Oem Table ID : "GLK-SOC "
[018h 0024 004h]                Oem Revision : 00000003
[01Ch 0028 004h]             Asl Compiler ID : "BRXT"
[020h 0032 004h]       Asl Compiler Revision : 0100000D

[024h 0036 004h]          Local Apic Address : FEE00000
[028h 0040 004h]       Flags (decoded below) : 00000001
                         PC-AT Compatibility : 1

[02Ch 0044 001h]               Subtable Type : 00 [Processor Local APIC]
[02Dh 0045 001h]                      Length : 08
[02Eh 0046 001h]                Processor ID : 01
[02Fh 0047 001h]               Local Apic ID : 00
[030h 0048 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[034h 0052 001h]               Subtable Type : 00 [Processor Local APIC]
[035h 0053 001h]                      Length : 08
[036h 0054 001h]                Processor ID : 02
[037h 0055 001h]               Local Apic ID : 02
[038h 0056 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[03Ch 0060 001h]               Subtable Type : 00 [Processor Local APIC]
[03Dh 0061 001h]                      Length : 08
[03Eh 0062 001h]                Processor ID : 03
[03Fh 0063 001h]               Local Apic ID : 04
[040h 0064 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[044h 0068 001h]               Subtable Type : 00 [Processor Local APIC]
[045h 0069 001h]                      Length : 08
[046h 0070 001h]                Processor ID : 04
[047h 0071 001h]               Local Apic ID : 06
[048h 0072 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[04Ch 0076 001h]               Subtable Type : 01 [I/O APIC]
[04Dh 0077 001h]                      Length : 0C
[04Eh 0078 001h]                 I/O Apic ID : 01
[04Fh 0079 001h]                    Reserved : 00
[050h 0080 004h]                     Address : FEC00000
[054h 0084 004h]                   Interrupt : 00000000

[058h 0088 001h]               Subtable Type : 02 [Interrupt Source Override]
[059h 0089 001h]                      Length : 0A
[05Ah 0090 001h]                         Bus : 00
[05Bh 0091 001h]                      Source : 00
[05Ch 0092 004h]                   Interrupt : 00000002
[060h 0096 002h]       Flags (decoded below) : 0000
                                    Polarity : 0
                                Trigger Mode : 0

[062h 0098 001h]               Subtable Type : 02 [Interrupt Source Override]
[063h 0099 001h]                      Length : 0A
[064h 0100 001h]                         Bus : 00
[065h 0101 001h]                      Source : 09
[066h 0102 004h]                   Interrupt : 00000009
[06Ah 0106 002h]       Flags (decoded below) : 000F
                                    Polarity : 3
                                Trigger Mode : 3

[06Ch 0108 001h]               Subtable Type : 04 [Local APIC NMI]
[06Dh 0109 001h]                      Length : 06
[06Eh 0110 001h]                Processor ID : 01
[06Fh 0111 002h]       Flags (decoded below) : 000D
                                    Polarity : 1
                                Trigger Mode : 3
[071h 0113 001h]        Interrupt Input LINT : 01

[072h 0114 001h]               Subtable Type : 04 [Local APIC NMI]
[073h 0115 001h]                      Length : 06
[074h 0116 001h]                Processor ID : 02
[075h 0117 002h]       Flags (decoded below) : 000D
                                    Polarity : 1
                                Trigger Mode : 3
[077h 0119 001h]        Interrupt Input LINT : 01

[078h 0120 001h]               Subtable Type : 04 [Local APIC NMI]
[079h 0121 001h]                      Length : 06
[07Ah 0122 001h]                Processor ID : 03
[07Bh 0123 002h]       Flags (decoded below) : 000D
                                    Polarity : 1
                                Trigger Mode : 3
[07Dh 0125 001h]        Interrupt Input LINT : 01

[07Eh 0126 001h]               Subtable Type : 04 [Local APIC NMI]
[07Fh 0127 001h]                      Length : 06
[080h 0128 001h]                Processor ID : 04
[081h 0129 002h]       Flags (decoded below) : 000D
                                    Polarity : 1
                                Trigger Mode : 3
[083h 0131 001h]        Interrupt Input LINT : 01

Raw Table Data: Length 132 (0x84)

    0000: 41 50 49 43 84 00 00 00 04 D6 49 4E 54 45 4C 20  // APIC......INTEL 
    0010: 47 4C 4B 2D 53 4F 43 20 03 00 00 00 42 52 58 54  // GLK-SOC ....BRXT
    0020: 0D 00 00 01 00 00 E0 FE 01 00 00 00 00 08 01 00  // ................
    0030: 01 00 00 00 00 08 02 02 01 00 00 00 00 08 03 04  // ................
    0040: 00 00 00 00 00 08 04 06 00 00 00 00 01 0C 01 00  // ................
    0050: 00 00 C0 FE 00 00 00 00 02 0A 00 00 02 00 00 00  // ................
    0060: 00 00 02 0A 00 09 09 00 00 00 0F 00 04 06 01 0D  // ................
    0070: 00 01 04 06 02 0D 00 01 04 06 03 0D 00 01 04 06  // ................
    0080: 04 0D 00 01                                      // ....
