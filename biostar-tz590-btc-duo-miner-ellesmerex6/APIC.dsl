/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of APIC.dat, Thu Apr  6 17:23:31 2023
 *
 * ACPI Data Table [APIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "APIC"    [Multiple APIC Description Table (MADT)]
[004h 0004 004h]                Table Length : 00000164
[008h 0008 001h]                    Revision : 04
[009h 0009 001h]                    Checksum : BF
[00Ah 0010 006h]                      Oem ID : "ALASKA"
[010h 0016 008h]                Oem Table ID : "A M I "
[018h 0024 004h]                Oem Revision : 01072009
[01Ch 0028 004h]             Asl Compiler ID : "AMI "
[020h 0032 004h]       Asl Compiler Revision : 01000013

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
[037h 0055 001h]               Local Apic ID : 02
[038h 0056 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[03Ch 0060 001h]               Subtable Type : 00 [Processor Local APIC]
[03Dh 0061 001h]                      Length : 08
[03Eh 0062 001h]                Processor ID : 02
[03Fh 0063 001h]               Local Apic ID : 04
[040h 0064 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[044h 0068 001h]               Subtable Type : 00 [Processor Local APIC]
[045h 0069 001h]                      Length : 08
[046h 0070 001h]                Processor ID : 03
[047h 0071 001h]               Local Apic ID : 06
[048h 0072 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[04Ch 0076 001h]               Subtable Type : 00 [Processor Local APIC]
[04Dh 0077 001h]                      Length : 08
[04Eh 0078 001h]                Processor ID : 04
[04Fh 0079 001h]               Local Apic ID : 08
[050h 0080 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[054h 0084 001h]               Subtable Type : 00 [Processor Local APIC]
[055h 0085 001h]                      Length : 08
[056h 0086 001h]                Processor ID : 05
[057h 0087 001h]               Local Apic ID : 0A
[058h 0088 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[05Ch 0092 001h]               Subtable Type : 00 [Processor Local APIC]
[05Dh 0093 001h]                      Length : 08
[05Eh 0094 001h]                Processor ID : 06
[05Fh 0095 001h]               Local Apic ID : 01
[060h 0096 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[064h 0100 001h]               Subtable Type : 00 [Processor Local APIC]
[065h 0101 001h]                      Length : 08
[066h 0102 001h]                Processor ID : 07
[067h 0103 001h]               Local Apic ID : 03
[068h 0104 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[06Ch 0108 001h]               Subtable Type : 00 [Processor Local APIC]
[06Dh 0109 001h]                      Length : 08
[06Eh 0110 001h]                Processor ID : 08
[06Fh 0111 001h]               Local Apic ID : 05
[070h 0112 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[074h 0116 001h]               Subtable Type : 00 [Processor Local APIC]
[075h 0117 001h]                      Length : 08
[076h 0118 001h]                Processor ID : 09
[077h 0119 001h]               Local Apic ID : 07
[078h 0120 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[07Ch 0124 001h]               Subtable Type : 00 [Processor Local APIC]
[07Dh 0125 001h]                      Length : 08
[07Eh 0126 001h]                Processor ID : 0A
[07Fh 0127 001h]               Local Apic ID : 09
[080h 0128 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[084h 0132 001h]               Subtable Type : 00 [Processor Local APIC]
[085h 0133 001h]                      Length : 08
[086h 0134 001h]                Processor ID : 0B
[087h 0135 001h]               Local Apic ID : 0B
[088h 0136 004h]       Flags (decoded below) : 00000001
                           Processor Enabled : 1
                      Runtime Online Capable : 0

[08Ch 0140 001h]               Subtable Type : 00 [Processor Local APIC]
[08Dh 0141 001h]                      Length : 08
[08Eh 0142 001h]                Processor ID : 0C
[08Fh 0143 001h]               Local Apic ID : FF
[090h 0144 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[094h 0148 001h]               Subtable Type : 00 [Processor Local APIC]
[095h 0149 001h]                      Length : 08
[096h 0150 001h]                Processor ID : 0D
[097h 0151 001h]               Local Apic ID : FF
[098h 0152 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[09Ch 0156 001h]               Subtable Type : 00 [Processor Local APIC]
[09Dh 0157 001h]                      Length : 08
[09Eh 0158 001h]                Processor ID : 0E
[09Fh 0159 001h]               Local Apic ID : FF
[0A0h 0160 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[0A4h 0164 001h]               Subtable Type : 00 [Processor Local APIC]
[0A5h 0165 001h]                      Length : 08
[0A6h 0166 001h]                Processor ID : 0F
[0A7h 0167 001h]               Local Apic ID : FF
[0A8h 0168 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[0ACh 0172 001h]               Subtable Type : 00 [Processor Local APIC]
[0ADh 0173 001h]                      Length : 08
[0AEh 0174 001h]                Processor ID : 10
[0AFh 0175 001h]               Local Apic ID : FF
[0B0h 0176 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[0B4h 0180 001h]               Subtable Type : 00 [Processor Local APIC]
[0B5h 0181 001h]                      Length : 08
[0B6h 0182 001h]                Processor ID : 11
[0B7h 0183 001h]               Local Apic ID : FF
[0B8h 0184 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[0BCh 0188 001h]               Subtable Type : 00 [Processor Local APIC]
[0BDh 0189 001h]                      Length : 08
[0BEh 0190 001h]                Processor ID : 12
[0BFh 0191 001h]               Local Apic ID : FF
[0C0h 0192 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[0C4h 0196 001h]               Subtable Type : 00 [Processor Local APIC]
[0C5h 0197 001h]                      Length : 08
[0C6h 0198 001h]                Processor ID : 13
[0C7h 0199 001h]               Local Apic ID : FF
[0C8h 0200 004h]       Flags (decoded below) : 00000000
                           Processor Enabled : 0
                      Runtime Online Capable : 0

[0CCh 0204 001h]               Subtable Type : 01 [I/O APIC]
[0CDh 0205 001h]                      Length : 0C
[0CEh 0206 001h]                 I/O Apic ID : 02
[0CFh 0207 001h]                    Reserved : 00
[0D0h 0208 004h]                     Address : FEC00000
[0D4h 0212 004h]                   Interrupt : 00000000

[0D8h 0216 001h]               Subtable Type : 02 [Interrupt Source Override]
[0D9h 0217 001h]                      Length : 0A
[0DAh 0218 001h]                         Bus : 00
[0DBh 0219 001h]                      Source : 00
[0DCh 0220 004h]                   Interrupt : 00000002
[0E0h 0224 002h]       Flags (decoded below) : 0000
                                    Polarity : 0
                                Trigger Mode : 0

[0E2h 0226 001h]               Subtable Type : 02 [Interrupt Source Override]
[0E3h 0227 001h]                      Length : 0A
[0E4h 0228 001h]                         Bus : 00
[0E5h 0229 001h]                      Source : 09
[0E6h 0230 004h]                   Interrupt : 00000009
[0EAh 0234 002h]       Flags (decoded below) : 000D
                                    Polarity : 1
                                Trigger Mode : 3

[0ECh 0236 001h]               Subtable Type : 04 [Local APIC NMI]
[0EDh 0237 001h]                      Length : 06
[0EEh 0238 001h]                Processor ID : 01
[0EFh 0239 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[0F1h 0241 001h]        Interrupt Input LINT : 01

[0F2h 0242 001h]               Subtable Type : 04 [Local APIC NMI]
[0F3h 0243 001h]                      Length : 06
[0F4h 0244 001h]                Processor ID : 02
[0F5h 0245 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[0F7h 0247 001h]        Interrupt Input LINT : 01

[0F8h 0248 001h]               Subtable Type : 04 [Local APIC NMI]
[0F9h 0249 001h]                      Length : 06
[0FAh 0250 001h]                Processor ID : 03
[0FBh 0251 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[0FDh 0253 001h]        Interrupt Input LINT : 01

[0FEh 0254 001h]               Subtable Type : 04 [Local APIC NMI]
[0FFh 0255 001h]                      Length : 06
[100h 0256 001h]                Processor ID : 04
[101h 0257 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[103h 0259 001h]        Interrupt Input LINT : 01

[104h 0260 001h]               Subtable Type : 04 [Local APIC NMI]
[105h 0261 001h]                      Length : 06
[106h 0262 001h]                Processor ID : 05
[107h 0263 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[109h 0265 001h]        Interrupt Input LINT : 01

[10Ah 0266 001h]               Subtable Type : 04 [Local APIC NMI]
[10Bh 0267 001h]                      Length : 06
[10Ch 0268 001h]                Processor ID : 06
[10Dh 0269 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[10Fh 0271 001h]        Interrupt Input LINT : 01

[110h 0272 001h]               Subtable Type : 04 [Local APIC NMI]
[111h 0273 001h]                      Length : 06
[112h 0274 001h]                Processor ID : 07
[113h 0275 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[115h 0277 001h]        Interrupt Input LINT : 01

[116h 0278 001h]               Subtable Type : 04 [Local APIC NMI]
[117h 0279 001h]                      Length : 06
[118h 0280 001h]                Processor ID : 08
[119h 0281 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[11Bh 0283 001h]        Interrupt Input LINT : 01

[11Ch 0284 001h]               Subtable Type : 04 [Local APIC NMI]
[11Dh 0285 001h]                      Length : 06
[11Eh 0286 001h]                Processor ID : 09
[11Fh 0287 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[121h 0289 001h]        Interrupt Input LINT : 01

[122h 0290 001h]               Subtable Type : 04 [Local APIC NMI]
[123h 0291 001h]                      Length : 06
[124h 0292 001h]                Processor ID : 0A
[125h 0293 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[127h 0295 001h]        Interrupt Input LINT : 01

[128h 0296 001h]               Subtable Type : 04 [Local APIC NMI]
[129h 0297 001h]                      Length : 06
[12Ah 0298 001h]                Processor ID : 0B
[12Bh 0299 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[12Dh 0301 001h]        Interrupt Input LINT : 01

[12Eh 0302 001h]               Subtable Type : 04 [Local APIC NMI]
[12Fh 0303 001h]                      Length : 06
[130h 0304 001h]                Processor ID : 0C
[131h 0305 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[133h 0307 001h]        Interrupt Input LINT : 01

[134h 0308 001h]               Subtable Type : 04 [Local APIC NMI]
[135h 0309 001h]                      Length : 06
[136h 0310 001h]                Processor ID : 0D
[137h 0311 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[139h 0313 001h]        Interrupt Input LINT : 01

[13Ah 0314 001h]               Subtable Type : 04 [Local APIC NMI]
[13Bh 0315 001h]                      Length : 06
[13Ch 0316 001h]                Processor ID : 0E
[13Dh 0317 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[13Fh 0319 001h]        Interrupt Input LINT : 01

[140h 0320 001h]               Subtable Type : 04 [Local APIC NMI]
[141h 0321 001h]                      Length : 06
[142h 0322 001h]                Processor ID : 0F
[143h 0323 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[145h 0325 001h]        Interrupt Input LINT : 01

[146h 0326 001h]               Subtable Type : 04 [Local APIC NMI]
[147h 0327 001h]                      Length : 06
[148h 0328 001h]                Processor ID : 10
[149h 0329 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[14Bh 0331 001h]        Interrupt Input LINT : 01

[14Ch 0332 001h]               Subtable Type : 04 [Local APIC NMI]
[14Dh 0333 001h]                      Length : 06
[14Eh 0334 001h]                Processor ID : 11
[14Fh 0335 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[151h 0337 001h]        Interrupt Input LINT : 01

[152h 0338 001h]               Subtable Type : 04 [Local APIC NMI]
[153h 0339 001h]                      Length : 06
[154h 0340 001h]                Processor ID : 12
[155h 0341 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[157h 0343 001h]        Interrupt Input LINT : 01

[158h 0344 001h]               Subtable Type : 04 [Local APIC NMI]
[159h 0345 001h]                      Length : 06
[15Ah 0346 001h]                Processor ID : 13
[15Bh 0347 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[15Dh 0349 001h]        Interrupt Input LINT : 01

[15Eh 0350 001h]               Subtable Type : 04 [Local APIC NMI]
[15Fh 0351 001h]                      Length : 06
[160h 0352 001h]                Processor ID : 14
[161h 0353 002h]       Flags (decoded below) : 0005
                                    Polarity : 1
                                Trigger Mode : 1
[163h 0355 001h]        Interrupt Input LINT : 01

Raw Table Data: Length 356 (0x164)

    0000: 41 50 49 43 64 01 00 00 04 BF 41 4C 41 53 4B 41  // APICd.....ALASKA
    0010: 41 20 4D 20 49 20 00 00 09 20 07 01 41 4D 49 20  // A M I ... ..AMI 
    0020: 13 00 00 01 00 00 E0 FE 01 00 00 00 00 08 00 00  // ................
    0030: 01 00 00 00 00 08 01 02 01 00 00 00 00 08 02 04  // ................
    0040: 01 00 00 00 00 08 03 06 01 00 00 00 00 08 04 08  // ................
    0050: 01 00 00 00 00 08 05 0A 01 00 00 00 00 08 06 01  // ................
    0060: 01 00 00 00 00 08 07 03 01 00 00 00 00 08 08 05  // ................
    0070: 01 00 00 00 00 08 09 07 01 00 00 00 00 08 0A 09  // ................
    0080: 01 00 00 00 00 08 0B 0B 01 00 00 00 00 08 0C FF  // ................
    0090: 00 00 00 00 00 08 0D FF 00 00 00 00 00 08 0E FF  // ................
    00A0: 00 00 00 00 00 08 0F FF 00 00 00 00 00 08 10 FF  // ................
    00B0: 00 00 00 00 00 08 11 FF 00 00 00 00 00 08 12 FF  // ................
    00C0: 00 00 00 00 00 08 13 FF 00 00 00 00 01 0C 02 00  // ................
    00D0: 00 00 C0 FE 00 00 00 00 02 0A 00 00 02 00 00 00  // ................
    00E0: 00 00 02 0A 00 09 09 00 00 00 0D 00 04 06 01 05  // ................
    00F0: 00 01 04 06 02 05 00 01 04 06 03 05 00 01 04 06  // ................
    0100: 04 05 00 01 04 06 05 05 00 01 04 06 06 05 00 01  // ................
    0110: 04 06 07 05 00 01 04 06 08 05 00 01 04 06 09 05  // ................
    0120: 00 01 04 06 0A 05 00 01 04 06 0B 05 00 01 04 06  // ................
    0130: 0C 05 00 01 04 06 0D 05 00 01 04 06 0E 05 00 01  // ................
    0140: 04 06 0F 05 00 01 04 06 10 05 00 01 04 06 11 05  // ................
    0150: 00 01 04 06 12 05 00 01 04 06 13 05 00 01 04 06  // ................
    0160: 14 05 00 01                                      // ....
