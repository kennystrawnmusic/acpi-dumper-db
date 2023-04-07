/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of WDAT.bin, Thu Apr  6 17:32:52 2023
 *
 * ACPI Data Table [WDAT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "WDAT"    [Watchdog Action Table]
[004h 0004 004h]                Table Length : 00000104
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : CA
[00Ah 0010 006h]                      Oem ID : ""
[010h 0016 008h]                Oem Table ID : ""
[018h 0024 004h]                Oem Revision : 00000000
[01Ch 0028 004h]             Asl Compiler ID : ""
[020h 0032 004h]       Asl Compiler Revision : 00000000

[024h 0036 004h]               Header Length : 00000020
[028h 0040 002h]                 PCI Segment : 00FF
[02Ah 0042 001h]                     PCI Bus : FF
[02Bh 0043 001h]                  PCI Device : FF
[02Ch 0044 001h]                PCI Function : FF
[02Dh 0045 003h]                    Reserved : 000000
[030h 0048 004h]                Timer Period : 00000258
[034h 0052 004h]                   Max Count : 000003FF
[038h 0056 004h]                   Min Count : 00000002
[03Ch 0060 001h]       Flags (decoded below) : 81
                                     Enabled : 1
                         Stopped When Asleep : 1
[03Dh 0061 003h]                    Reserved : 000000
[040h 0064 004h]        Watchdog Entry Count : 00000008

[044h 0068 001h]             Watchdog Action : 01
[045h 0069 001h]                 Instruction : 82
[046h 0070 002h]                    Reserved : 0000

[048h 0072 00Ch]             Register Region : [Generic Address Structure]
[048h 0072 001h]                    Space ID : 01 [SystemIO]
[049h 0073 001h]                   Bit Width : 0A
[04Ah 0074 001h]                  Bit Offset : 00
[04Bh 0075 001h]        Encoded Access Width : 03 [DWord Access:32]
[04Ch 0076 008h]                     Address : 0000000000000460

[054h 0084 004h]                       Value : 00000004
[058h 0088 004h]               Register Mask : 000003FF

[05Ch 0092 001h]             Watchdog Action : 06
[05Dh 0093 001h]                 Instruction : 83
[05Eh 0094 002h]                    Reserved : 0000

[060h 0096 00Ch]             Register Region : [Generic Address Structure]
[060h 0096 001h]                    Space ID : 01 [SystemIO]
[061h 0097 001h]                   Bit Width : 0A
[062h 0098 001h]                  Bit Offset : 10
[063h 0099 001h]        Encoded Access Width : 03 [DWord Access:32]
[064h 0100 008h]                     Address : 0000000000000470

[06Ch 0108 004h]                       Value : 000003FF
[070h 0112 004h]               Register Mask : 000003FF

[074h 0116 001h]             Watchdog Action : 08
[075h 0117 001h]                 Instruction : 00
[076h 0118 002h]                    Reserved : 0000

[078h 0120 00Ch]             Register Region : [Generic Address Structure]
[078h 0120 001h]                    Space ID : 01 [SystemIO]
[079h 0121 001h]                   Bit Width : 01
[07Ah 0122 001h]                  Bit Offset : 0B
[07Bh 0123 001h]        Encoded Access Width : 03 [DWord Access:32]
[07Ch 0124 008h]                     Address : 0000000000000468

[084h 0132 004h]                       Value : 00000000
[088h 0136 004h]               Register Mask : 00000001

[08Ch 0140 001h]             Watchdog Action : 09
[08Dh 0141 001h]                 Instruction : 82
[08Eh 0142 002h]                    Reserved : 0000

[090h 0144 00Ch]             Register Region : [Generic Address Structure]
[090h 0144 001h]                    Space ID : 01 [SystemIO]
[091h 0145 001h]                   Bit Width : 01
[092h 0146 001h]                  Bit Offset : 0B
[093h 0147 001h]        Encoded Access Width : 03 [DWord Access:32]
[094h 0148 008h]                     Address : 0000000000000468

[09Ch 0156 004h]                       Value : 00000000
[0A0h 0160 004h]               Register Mask : 00000001

[0A4h 0164 001h]             Watchdog Action : 0A
[0A5h 0165 001h]                 Instruction : 00
[0A6h 0166 002h]                    Reserved : 0000

[0A8h 0168 00Ch]             Register Region : [Generic Address Structure]
[0A8h 0168 001h]                    Space ID : 01 [SystemIO]
[0A9h 0169 001h]                   Bit Width : 01
[0AAh 0170 001h]                  Bit Offset : 0B
[0ABh 0171 001h]        Encoded Access Width : 03 [DWord Access:32]
[0ACh 0172 008h]                     Address : 0000000000000468

[0B4h 0180 004h]                       Value : 00000001
[0B8h 0184 004h]               Register Mask : 00000001

[0BCh 0188 001h]             Watchdog Action : 0B
[0BDh 0189 001h]                 Instruction : 82
[0BEh 0190 002h]                    Reserved : 0000

[0C0h 0192 00Ch]             Register Region : [Generic Address Structure]
[0C0h 0192 001h]                    Space ID : 01 [SystemIO]
[0C1h 0193 001h]                   Bit Width : 01
[0C2h 0194 001h]                  Bit Offset : 0B
[0C3h 0195 001h]        Encoded Access Width : 03 [DWord Access:32]
[0C4h 0196 008h]                     Address : 0000000000000468

[0CCh 0204 004h]                       Value : 00000001
[0D0h 0208 004h]               Register Mask : 00000001

[0D4h 0212 001h]             Watchdog Action : 20
[0D5h 0213 001h]                 Instruction : 00
[0D6h 0214 002h]                    Reserved : 0000

[0D8h 0216 00Ch]             Register Region : [Generic Address Structure]
[0D8h 0216 001h]                    Space ID : 01 [SystemIO]
[0D9h 0217 001h]                   Bit Width : 01
[0DAh 0218 001h]                  Bit Offset : 11
[0DBh 0219 001h]        Encoded Access Width : 03 [DWord Access:32]
[0DCh 0220 008h]                     Address : 0000000000000464

[0E4h 0228 004h]                       Value : 00000001
[0E8h 0232 004h]               Register Mask : 00000001

[0ECh 0236 001h]             Watchdog Action : 21
[0EDh 0237 001h]                 Instruction : 82
[0EEh 0238 002h]                    Reserved : 0000

[0F0h 0240 00Ch]             Register Region : [Generic Address Structure]
[0F0h 0240 001h]                    Space ID : 01 [SystemIO]
[0F1h 0241 001h]                   Bit Width : 01
[0F2h 0242 001h]                  Bit Offset : 11
[0F3h 0243 001h]        Encoded Access Width : 03 [DWord Access:32]
[0F4h 0244 008h]                     Address : 0000000000000464

[0FCh 0252 004h]                       Value : 00000001
[100h 0256 004h]               Register Mask : 00000001

Raw Table Data: Length 260 (0x104)

    0000: 57 44 41 54 04 01 00 00 01 CA 00 00 00 00 00 00  // WDAT............
    0010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0020: 00 00 00 00 20 00 00 00 FF 00 FF FF FF 00 00 00  // .... ...........
    0030: 58 02 00 00 FF 03 00 00 02 00 00 00 81 00 00 00  // X...............
    0040: 08 00 00 00 01 82 00 00 01 0A 00 03 60 04 00 00  // ............`...
    0050: 00 00 00 00 04 00 00 00 FF 03 00 00 06 83 00 00  // ................
    0060: 01 0A 10 03 70 04 00 00 00 00 00 00 FF 03 00 00  // ....p...........
    0070: FF 03 00 00 08 00 00 00 01 01 0B 03 68 04 00 00  // ............h...
    0080: 00 00 00 00 00 00 00 00 01 00 00 00 09 82 00 00  // ................
    0090: 01 01 0B 03 68 04 00 00 00 00 00 00 00 00 00 00  // ....h...........
    00A0: 01 00 00 00 0A 00 00 00 01 01 0B 03 68 04 00 00  // ............h...
    00B0: 00 00 00 00 01 00 00 00 01 00 00 00 0B 82 00 00  // ................
    00C0: 01 01 0B 03 68 04 00 00 00 00 00 00 01 00 00 00  // ....h...........
    00D0: 01 00 00 00 20 00 00 00 01 01 11 03 64 04 00 00  // .... .......d...
    00E0: 00 00 00 00 01 00 00 00 01 00 00 00 21 82 00 00  // ............!...
    00F0: 01 01 11 03 64 04 00 00 00 00 00 00 01 00 00 00  // ....d...........
    0100: 01 00 00 00                                      // ....
