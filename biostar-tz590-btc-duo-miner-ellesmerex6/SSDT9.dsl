/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT9.dat, Thu Apr  6 17:23:31 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000144 (324)
 *     Revision         0x02
 *     Checksum         0x1B
 *     OEM ID           "Intel "
 *     OEM Table ID     "ADebTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180209 (538444297)
 */
DefinitionBlock ("", "SSDT", 2, "Intel ", "ADebTabl", 0x00001000)
{
    Scope (\)
    {
        Name (DPTR, 0x7F10B000)
        Name (EPTR, 0x7F11B000)
        Name (CPTR, 0x7F10B020)
        Mutex (MMUT, 0x00)
        OperationRegion (ADBP, SystemIO, 0xB2, 0x02)
        Field (ADBP, ByteAcc, NoLock, Preserve)
        {
            B2PT,   8, 
            B3PT,   8
        }

        Method (MDBG, 1, Serialized)
        {
            OperationRegion (ADHD, SystemMemory, DPTR, 0x20)
            Field (ADHD, ByteAcc, NoLock, Preserve)
            {
                ASIG,   128, 
                ASIZ,   32, 
                ACHP,   32, 
                ACTP,   32, 
                SMIN,   8, 
                WRAP,   8, 
                SMMV,   8, 
                TRUN,   8
            }

            Local0 = Acquire (MMUT, 0x03E8)
            If ((Local0 == Zero))
            {
                OperationRegion (ABLK, SystemMemory, CPTR, 0x20)
                Field (ABLK, ByteAcc, NoLock, Preserve)
                {
                    AAAA,   256
                }

                ToHexString (Arg0, Local1)
                TRUN = Zero
                If ((SizeOf (Local1) >= 0x20))
                {
                    TRUN = One
                }

                Mid (Local1, Zero, 0x1F, AAAA) /* \MDBG.AAAA */
                CPTR += 0x20
                If ((CPTR >= EPTR))
                {
                    CPTR = (DPTR + 0x20)
                    WRAP = One
                }

                ACTP = CPTR /* \CPTR */
                If (SMMV)
                {
                    B2PT = SMIN /* \MDBG.SMIN */
                }

                Release (MMUT)
            }

            Return (Local0)
        }
    }
}

