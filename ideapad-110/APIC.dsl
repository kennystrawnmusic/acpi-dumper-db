/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of APIC.bin, Thu Apr  6 17:33:32 2023
 *
 * ACPI Data Table [APIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "APIC"    [Multiple APIC Description Table (MADT)]
[004h 0004 004h]                Table Length : 00000090
[008h 0008 001h]                    Revision : 02
[009h 0009 001h]                    Checksum : 84
[00Ah 0010 006h]                      Oem ID : "LENOVO"
[010h 0016 008h]                Oem Table ID : "CB-01   "
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "PTEC"
[020h 0032 004h]       Asl Compiler Revision : 00000002

[024h 0036 004h]          Local Apic Address : FEE00000
[028h 0040 004h]       Flags (decoded below) : 00000001
                         PC-AT Compatibility : 1

[02Ch 0044 001h]               Subtable Type : 00 [Processor Local APIC]
[02Dh 0045 001h]                      Length : 08
[02Eh 0046 001h]                Processor ID : 00
[02Fh 0047 001h]               Local Apic ID : 00
[030h 0048 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[034h 0052 001h]               Subtable Type : 00 [Processor Local APIC]
[035h 0053 001h]                      Length : 08
[036h 0054 001h]                Processor ID : 01
[037h 0055 001h]               Local Apic ID : 01
[038h 0056 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[03Ch 0060 001h]               Subtable Type : 00 [Processor Local APIC]
[03Dh 0061 001h]                      Length : 08
[03Eh 0062 001h]                Processor ID : 02
[03Fh 0063 001h]               Local Apic ID : 02
[040h 0064 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[044h 0068 001h]               Subtable Type : 00 [Processor Local APIC]
[045h 0069 001h]                      Length : 08
[046h 0070 001h]                Processor ID : 03
[047h 0071 001h]               Local Apic ID : 03
[048h 0072 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[04Ch 0076 001h]               Subtable Type : 01 [I/O APIC]
[04Dh 0077 001h]                      Length : 0C
[04Eh 0078 001h]                 I/O Apic ID : 04
[04Fh 0079 001h]                    Reserved : 00
[050h 0080 004h]                     Address : FEC00000
[054h 0084 004h]                   Interrupt : 00000000

[058h 0088 001h]               Subtable Type : 01 [I/O APIC]
[059h 0089 001h]                      Length : 0C
[05Ah 0090 001h]                 I/O Apic ID : 05
[05Bh 0091 001h]                    Reserved : 00
[05Ch 0092 004h]                     Address : FEC01000
[060h 0096 004h]                   Interrupt : 00000018

[064h 0100 001h]               Subtable Type : 02 [Interrupt Source Override]
[065h 0101 001h]                      Length : 0A
[066h 0102 001h]                         Bus : 00
[067h 0103 001h]                      Source : 00
[068h 0104 004h]                   Interrupt : 00000002
[06Ch 0108 002h]       Flags (decoded below) : 0000
                                    Polarity : 0
                                Trigger Mode : 0

[06Eh 0110 001h]               Subtable Type : 02 [Interrupt Source Override]
[06Fh 0111 001h]                      Length : 0A
[070h 0112 001h]                         Bus : 00
[071h 0113 001h]                      Source : 09
[072h 0114 004h]                   Interrupt : 00000009
[076h 0118 002h]       Flags (decoded below) : 000F
                                    Polarity : 3
                                Trigger Mode : 3

[078h 0120 001h]               Subtable Type : 04 [Local APIC NMI]
[079h 0121 001h]                      Length : 06
[07Ah 0122 001h]                Processor ID : 00
[07Bh 0123 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[07Dh 0125 001h]        Interrupt Input LINT : 01

[07Eh 0126 001h]               Subtable Type : 04 [Local APIC NMI]
[07Fh 0127 001h]                      Length : 06
[080h 0128 001h]                Processor ID : 01
[081h 0129 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[083h 0131 001h]        Interrupt Input LINT : 01

[084h 0132 001h]               Subtable Type : 04 [Local APIC NMI]
[085h 0133 001h]                      Length : 06
[086h 0134 001h]                Processor ID : 02
[087h 0135 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[089h 0137 001h]        Interrupt Input LINT : 01

[08Ah 0138 001h]               Subtable Type : 04 [Local APIC NMI]
[08Bh 0139 001h]                      Length : 06
[08Ch 0140 001h]                Processor ID : 03
[08Dh 0141 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[08Fh 0143 001h]        Interrupt Input LINT : 01

Raw Table Data: Length 144 (0x90)

    0000: 41 50 49 43 90 00 00 00 02 84 4C 45 4E 4F 56 4F  // APIC......LENOVO
    0010: 43 42 2D 30 31 20 20 20 02 00 00 00 50 54 45 43  // CB-01   ....PTEC
    0020: 02 00 00 00 00 00 E0 FE 01 00 00 00 00 08 00 00  // ................
    0030: 01 00 00 00 00 08 01 01 01 00 00 00 00 08 02 02  // ................
    0040: 01 00 00 00 00 08 03 03 01 00 00 00 01 0C 04 00  // ................
    0050: 00 00 C0 FE 00 00 00 00 01 0C 05 00 00 10 C0 FE  // ................
    0060: 18 00 00 00 02 0A 00 00 02 00 00 00 00 00 02 0A  // ................
    0070: 00 09 09 00 00 00 0F 00 04 06 00 05 00 01 04 06  // ................
    0080: 01 05 00 01 04 06 02 05 00 01 04 06 03 05 00 01  // ................
