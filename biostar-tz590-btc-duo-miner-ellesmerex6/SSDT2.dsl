/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT2.dat, Thu Apr  6 17:23:31 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002940 (10560)
 *     Revision         0x02
 *     Checksum         0xC7
 *     OEM ID           "SaSsdt"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180209 (538444297)
 */
DefinitionBlock ("", "SSDT", 2, "SaSsdt", "SaSsdt ", 0x00003000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments
    External (_SB_.CPID, UnknownObj)
    External (_SB_.ISME, MethodObj)    // 1 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.B0D3, DeviceObj)
    External (_SB_.PC00.GFX0, DeviceObj)
    External (_SB_.PC00.IPU0, DeviceObj)
    External (_SB_.PC00.PC2M, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG0, DeviceObj)
    External (_SB_.PC00.PEG0._ADR, UnknownObj)
    External (_SB_.PC00.PEG0.ECR1, UnknownObj)
    External (_SB_.PC00.PEG0.GPRW, MethodObj)    // 2 Arguments
    External (_SB_.PC00.PEG0.PEGP, DeviceObj)
    External (_SB_.PC00.PEG0.PICM, UnknownObj)
    External (_SB_.PC00.PEG0.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG0.UPRD, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG1, DeviceObj)
    External (_SB_.PC00.PEG1._ADR, UnknownObj)
    External (_SB_.PC00.PEG1.ECR1, UnknownObj)
    External (_SB_.PC00.PEG1.GPRW, MethodObj)    // 2 Arguments
    External (_SB_.PC00.PEG1.PEGP, DeviceObj)
    External (_SB_.PC00.PEG1.PICM, UnknownObj)
    External (_SB_.PC00.PEG1.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG1.PPRW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG1.UPRD, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG2, DeviceObj)
    External (_SB_.PC00.PEG2._ADR, UnknownObj)
    External (_SB_.PC00.PEG2.ECR1, UnknownObj)
    External (_SB_.PC00.PEG2.GPRW, MethodObj)    // 2 Arguments
    External (_SB_.PC00.PEG2.PEGP, DeviceObj)
    External (_SB_.PC00.PEG2.PICM, UnknownObj)
    External (_SB_.PC00.PEG2.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG2.PPRW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG2.UPRD, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG3, DeviceObj)
    External (_SB_.PC00.PEG3._ADR, UnknownObj)
    External (_SB_.PC00.PEG3.ECR1, UnknownObj)
    External (_SB_.PC00.PEG3.GPRW, MethodObj)    // 2 Arguments
    External (_SB_.PC00.PEG3.PEGP, DeviceObj)
    External (_SB_.PC00.PEG3.PICM, UnknownObj)
    External (_SB_.PC00.PEG3.PPBA, MethodObj)    // 1 Arguments
    External (_SB_.PC00.PEG3.PPRW, MethodObj)    // 0 Arguments
    External (_SB_.PC00.PEG3.UPRD, MethodObj)    // 1 Arguments
    External (_SB_.SHPO, MethodObj)    // 2 Arguments
    External (AR02, UnknownObj)
    External (AR0A, UnknownObj)
    External (AR0B, UnknownObj)
    External (AR0C, UnknownObj)
    External (AR2A, UnknownObj)
    External (AR2B, UnknownObj)
    External (ECR1, IntObj)
    External (HGMD, UnknownObj)
    External (LTRW, UnknownObj)
    External (LTRX, UnknownObj)
    External (LTRY, UnknownObj)
    External (LTRZ, UnknownObj)
    External (MPGN, UnknownObj)
    External (OBFX, UnknownObj)
    External (OBFY, UnknownObj)
    External (OBFZ, UnknownObj)
    External (P0WK, UnknownObj)
    External (P1WK, UnknownObj)
    External (P2WK, UnknownObj)
    External (P3WK, UnknownObj)
    External (PD02, UnknownObj)
    External (PD0A, UnknownObj)
    External (PD0B, UnknownObj)
    External (PD0C, UnknownObj)
    External (PD2A, UnknownObj)
    External (PD2B, UnknownObj)
    External (PG0E, UnknownObj)
    External (PG1E, UnknownObj)
    External (PG2E, UnknownObj)
    External (PG3E, UnknownObj)
    External (PICM, IntObj)
    External (PINI, MethodObj)    // 0 Arguments
    External (SMSL, UnknownObj)
    External (SNSL, UnknownObj)
    External (VMCP, UnknownObj)
    External (VMDE, UnknownObj)

    Scope (\_SB.PC00.PEG0)
    {
        If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
        {
            Name (SLOT, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PG0E == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (LTEN, Zero)
            Name (LMSL, Zero)
            Name (LNSL, Zero)
            Name (CPMV, Zero)
            Name (OBFS, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (PRES ())
                {
                    LTEN = LTRX /* External reference */
                    LMSL = SMSL /* External reference */
                    LNSL = SNSL /* External reference */
                    If (CondRefOf (PINI))
                    {
                        PINI ()
                    }

                    If ((CondRefOf (VMCP) && CondRefOf (VMDE)))
                    {
                        If (((VMDE == One) && (VMCP == One)))
                        {
                            CPMV = One
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }

            OperationRegion (PXCS, SystemMemory, \_SB.PC00.PC2M (_ADR), 0x1000)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE0), 
                SCB0,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x248), 
                    ,   7, 
                Q0L2,   1, 
                Q0L0,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1, 
                Offset (0x328), 
                Offset (0x32B), 
                LTSM,   8, 
                Offset (0xC20), 
                    ,   4, 
                P0AP,   2, 
                Offset (0xC38), 
                    ,   3, 
                P0RM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (L23D, 0, Serialized)
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    Q0L0 = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (Q0L0)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    P0RM = Zero
                    P0AP = Zero
                }
                ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                {
                    If ((SCB0 != One))
                    {
                        Return (Zero)
                    }

                    L23R = One
                    Local0 = Zero
                    While (L23R)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    SCB0 = Zero
                    Local0 = Zero
                    While ((LASX == Zero))
                    {
                        If ((Local0 > 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }
                }
            }

            Method (DL23, 0, Serialized)
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    Q0L2 = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (Q0L2)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    P0RM = One
                    P0AP = 0x03
                }
                ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                {
                    L23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (L23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    SCB0 = One
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (PRES, 0, NotSerialized)
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            CreateBitField (OPTS, 0x0A, FUNA)
                            CreateBitField (OPTS, 0x0B, FUNB)
                            If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                            {
                                FUN0 = One
                                FUN4 = Zero
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                If ((Arg1 >= 0x04))
                                {
                                    If (CondRefOf (PPBA))
                                    {
                                        FUNA = One
                                    }

                                    If (CondRefOf (UPRD))
                                    {
                                        FUNB = One
                                    }
                                }

                                Return (OPTS) /* \_SB_.PC00.PEG0._DSM.OPTS */
                            }
                            Else
                            {
                                FUN0 = One
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTEN)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFS)
                                    {
                                        FUN4 = One
                                    }
                                }

                                If ((Arg1 >= 0x03))
                                {
                                    If (ECR1)
                                    {
                                        FUN8 = One
                                    }

                                    If (ECR1)
                                    {
                                        FUN9 = One
                                    }
                                }

                                If ((Arg1 >= 0x04))
                                {
                                    If (CondRefOf (PPBA))
                                    {
                                        FUNA = One
                                    }

                                    FUNB = One
                                }

                                Return (OPTS) /* \_SB_.PC00.PEG0._DSM.OPTS */
                            }
                        }
                        Case (0x04)
                        {
                            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFS)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTEN)
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC00.PEG0.LTRV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If (CondRefOf (ECR1))
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (One)
                                    }
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If (CondRefOf (ECR1))
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }
                        }
                        Case (0x0A)
                        {
                            If (CondRefOf (PPBA))
                            {
                                Return (PPBA (Arg3))
                            }
                        }
                        Case (0x0B)
                        {
                            If (CondRefOf (UPRD))
                            {
                                Return (UPRD (Arg3))
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If ((HPEX == One))
                {
                    HPEX = Zero
                    HPSX = One
                }

                If ((PMEX == One))
                {
                    PMEX = Zero
                    PMSX = One
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                If ((HPEX == Zero))
                {
                    HPEX = One
                    HPSX = One
                }

                If ((PMEX == Zero))
                {
                    PMEX = One
                    PMSX = One
                }
            }

            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
            {
                If (CondRefOf (PINI))
                {
                    Return (Package (0x04)
                    {
                        ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "FundamentalDeviceResetTriggeredOnD3ToD0", 
                                One
                            }
                        }, 

                        ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
                        Package (0x00){}
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "FundamentalDeviceResetTriggeredOnD3ToD0", 
                                One
                            }
                        }
                    })
                }
            }

            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
                Field (PEGR, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    PSTS,   1, 
                    Offset (0x2C), 
                    GENG,   1, 
                        ,   1, 
                    PMEG,   1
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    PSTS = One
                }

                If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                {
                    PMSX = One
                    PSPX = One
                    Return (One)
                }

                Return (Zero)
            }

            Method (HPEV, 0, Serialized)
            {
                If (((VDID != 0xFFFFFFFF) && HPSX))
                {
                    HPSX = One
                    If ((PDCX == One))
                    {
                        PDCX = One
                        If ((PDSX == Zero))
                        {
                            L0SE = Zero
                        }

                        Notify (^, Zero) // Bus Check
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.PEG1)
    {
        Name (SLOT, One)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((PG1E == One))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Name (LTEN, Zero)
        Name (LMSL, Zero)
        Name (LNSL, Zero)
        Name (OBFS, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                LTEN = LTRY /* External reference */
                LMSL = SMSL /* External reference */
                LNSL = SNSL /* External reference */
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    OBFS = OBFX /* External reference */
                }

                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                If (CondRefOf (\_SB.PC00.PEG1.PPRW))
                {
                    Return (\_SB.PC00.PEG1.PPRW ())
                }
            }

            Return (GPRW (0x69, 0x04))
        }

        OperationRegion (PXCS, SystemMemory, \_SB.PC00.PC2M (_ADR), 0x1000)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32, 
            Offset (0x50), 
            L0SE,   1, 
                ,   3, 
            LDIS,   1, 
            Offset (0x51), 
            Offset (0x52), 
                ,   13, 
            LASX,   1, 
            Offset (0x5A), 
            ABPX,   1, 
                ,   2, 
            PDCX,   1, 
                ,   2, 
            PDSX,   1, 
            Offset (0x5B), 
            Offset (0x60), 
            Offset (0x62), 
            PSPX,   1, 
            Offset (0xA4), 
            D3HT,   2, 
            Offset (0xD8), 
                ,   30, 
            HPEX,   1, 
            PMEX,   1, 
            Offset (0xE0), 
            SCB0,   1, 
            Offset (0xE2), 
                ,   2, 
            L23E,   1, 
            L23R,   1, 
            Offset (0x248), 
                ,   7, 
            Q0L2,   1, 
            Q0L0,   1, 
            Offset (0x324), 
                ,   3, 
            LEDM,   1, 
            Offset (0x328), 
            Offset (0x32B), 
            LTSM,   8, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P0RM,   1
        }

        Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
        {
            Offset (0xDC), 
                ,   30, 
            HPSX,   1, 
            PMSX,   1
        }

        Method (L23D, 0, Serialized)
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                Q0L0 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q0L0)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P0RM = Zero
                P0AP = Zero
            }
            ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
            {
                If ((SCB0 != One))
                {
                    Return (Zero)
                }

                L23R = One
                Local0 = Zero
                While (L23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                SCB0 = Zero
                Local0 = Zero
                While ((LASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }
            }
        }

        Method (DL23, 0, Serialized)
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                Q0L2 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q0L2)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P0RM = One
                P0AP = 0x03
            }
            ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
            {
                L23E = One
                Sleep (0x10)
                Local0 = Zero
                While (L23E)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                SCB0 = One
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (PRES, 0, NotSerialized)
        {
            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (OPTS, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (OPTS, Zero, FUN0)
                        CreateBitField (OPTS, 0x06, FUN6)
                        CreateBitField (OPTS, 0x04, FUN4)
                        CreateBitField (OPTS, 0x08, FUN8)
                        CreateBitField (OPTS, 0x09, FUN9)
                        CreateBitField (OPTS, 0x0A, FUNA)
                        CreateBitField (OPTS, 0x0B, FUNB)
                        If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                        {
                            FUN0 = One
                            FUN4 = Zero
                            If ((LTEN == One))
                            {
                                FUN6 = One
                            }

                            If ((Arg1 >= 0x02))
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }
                            }

                            If ((Arg1 >= 0x04))
                            {
                                If (CondRefOf (PPBA))
                                {
                                    FUNA = One
                                }

                                If (CondRefOf (UPRD))
                                {
                                    FUNB = One
                                }
                            }

                            Return (OPTS) /* \_SB_.PC00.PEG1._DSM.OPTS */
                        }
                        Else
                        {
                            FUN0 = One
                            If ((Arg1 >= 0x02))
                            {
                                If (LTEN)
                                {
                                    FUN6 = One
                                }

                                If (OBFS)
                                {
                                    FUN4 = One
                                }
                            }

                            If ((Arg1 >= 0x03))
                            {
                                If (ECR1)
                                {
                                    FUN8 = One
                                }

                                If (ECR1)
                                {
                                    FUN9 = One
                                }
                            }

                            If ((Arg1 >= 0x04))
                            {
                                If (CondRefOf (PPBA))
                                {
                                    FUNA = One
                                }

                                FUNB = One
                            }

                            Return (OPTS) /* \_SB_.PC00.PEG1._DSM.OPTS */
                        }
                    }
                    Case (0x04)
                    {
                        If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFS)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                    })
                                }
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If ((Arg1 >= 0x02))
                        {
                            If (LTEN)
                            {
                                LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                LTRV [One] = (LMSL & 0x03FF)
                                LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                LTRV [0x03] = (LNSL & 0x03FF)
                                Return (LTRV) /* \_SB_.PC00.PEG1.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (CondRefOf (ECR1))
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (CondRefOf (ECR1))
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        If (CondRefOf (UPRD))
                        {
                            Return (UPRD (Arg3))
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            If ((HPEX == One))
            {
                HPEX = Zero
                HPSX = One
            }

            If ((PMEX == One))
            {
                PMEX = Zero
                PMSX = One
            }
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            If ((HPEX == Zero))
            {
                HPEX = One
                HPSX = One
            }

            If ((PMEX == Zero))
            {
                PMEX = One
                PMSX = One
            }
        }

        Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
        {
            If (CondRefOf (PINI))
            {
                Return (Package (0x04)
                {
                    ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "FundamentalDeviceResetTriggeredOnD3ToD0", 
                            One
                        }
                    }, 

                    ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
                    Package (0x00){}
                })
            }
            Else
            {
                Return (Package (0x02)
                {
                    ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "FundamentalDeviceResetTriggeredOnD3ToD0", 
                            One
                        }
                    }
                })
            }
        }

        If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
        {
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                PSTS,   1, 
                Offset (0x2C), 
                GENG,   1, 
                    ,   1, 
                PMEG,   1
            }
        }

        Method (HPME, 0, Serialized)
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                PSTS = One
            }

            If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
            {
                PMSX = One
                PSPX = One
                Return (One)
            }

            Return (Zero)
        }

        Method (HPEV, 0, Serialized)
        {
            If (((VDID != 0xFFFFFFFF) && HPSX))
            {
                HPSX = One
                If ((PDCX == One))
                {
                    PDCX = One
                    If ((PDSX == Zero))
                    {
                        L0SE = Zero
                    }

                    Notify (^, Zero) // Bus Check
                }
            }
        }
    }

    Scope (\_SB.PC00.PEG2)
    {
        Name (SLOT, 0x02)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((PG2E == One))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Name (LTEN, Zero)
        Name (LMSL, Zero)
        Name (LNSL, Zero)
        Name (OBFS, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (PRES ())
            {
                LTEN = LTRZ /* External reference */
                LMSL = SMSL /* External reference */
                LNSL = SNSL /* External reference */
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    OBFS = OBFY /* External reference */
                }

                If (CondRefOf (PINI))
                {
                    PINI ()
                }
            }
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                If (CondRefOf (\_SB.PC00.PEG2.PPRW))
                {
                    Return (\_SB.PC00.PEG2.PPRW ())
                }
            }

            Return (GPRW (0x69, 0x04))
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
            {
                If (PICM)
                {
                    Return (AR02) /* External reference */
                }

                Return (PD02) /* External reference */
            }
            Else
            {
                If (PICM)
                {
                    Return (AR2A) /* External reference */
                }

                Return (PD2A) /* External reference */
            }
        }

        OperationRegion (PXCS, SystemMemory, \_SB.PC00.PC2M (_ADR), 0x1000)
        Field (PXCS, AnyAcc, NoLock, Preserve)
        {
            VDID,   32, 
            Offset (0x50), 
            L0SE,   1, 
                ,   3, 
            LDIS,   1, 
            Offset (0x51), 
            Offset (0x52), 
                ,   13, 
            LASX,   1, 
            Offset (0x5A), 
            ABPX,   1, 
                ,   2, 
            PDCX,   1, 
                ,   2, 
            PDSX,   1, 
            Offset (0x5B), 
            Offset (0x60), 
            Offset (0x62), 
            PSPX,   1, 
            Offset (0xA4), 
            D3HT,   2, 
            Offset (0xD8), 
                ,   30, 
            HPEX,   1, 
            PMEX,   1, 
            Offset (0xE0), 
            SCB0,   1, 
            Offset (0xE2), 
                ,   2, 
            L23E,   1, 
            L23R,   1, 
            Offset (0x248), 
                ,   7, 
            Q0L2,   1, 
            Q0L0,   1, 
            Offset (0x324), 
                ,   3, 
            LEDM,   1, 
            Offset (0x328), 
            Offset (0x32B), 
            LTSM,   8, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P0RM,   1
        }

        Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
        {
            Offset (0xDC), 
                ,   30, 
            HPSX,   1, 
            PMSX,   1
        }

        Method (L23D, 0, Serialized)
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                Q0L0 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q0L0)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P0RM = Zero
                P0AP = Zero
            }
            ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
            {
                If ((SCB0 != One))
                {
                    Return (Zero)
                }

                L23R = One
                Local0 = Zero
                While (L23R)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                SCB0 = Zero
                Local0 = Zero
                While ((LASX == Zero))
                {
                    If ((Local0 > 0x08))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }
            }
        }

        Method (DL23, 0, Serialized)
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                Q0L2 = One
                Sleep (0x10)
                Local0 = Zero
                While (Q0L2)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                P0RM = One
                P0AP = 0x03
            }
            ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
            {
                L23E = One
                Sleep (0x10)
                Local0 = Zero
                While (L23E)
                {
                    If ((Local0 > 0x04))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Local0++
                }

                SCB0 = One
            }
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (PRES, 0, NotSerialized)
        {
            If ((VDID == 0xFFFFFFFF))
            {
                Return (Zero)
            }
            Else
            {
                Return (One)
            }
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Name (OPTS, Buffer (0x02)
                        {
                             0x00, 0x00                                       // ..
                        })
                        CreateBitField (OPTS, Zero, FUN0)
                        CreateBitField (OPTS, 0x06, FUN6)
                        CreateBitField (OPTS, 0x04, FUN4)
                        CreateBitField (OPTS, 0x08, FUN8)
                        CreateBitField (OPTS, 0x09, FUN9)
                        CreateBitField (OPTS, 0x0A, FUNA)
                        CreateBitField (OPTS, 0x0B, FUNB)
                        If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                        {
                            FUN0 = One
                            FUN4 = Zero
                            If ((LTEN == One))
                            {
                                FUN6 = One
                            }

                            If ((Arg1 >= 0x02))
                            {
                                If (CondRefOf (ECR1))
                                {
                                    If ((ECR1 == One))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = One
                                            FUN9 = One
                                        }
                                    }
                                }
                            }

                            If ((Arg1 >= 0x04))
                            {
                                If (CondRefOf (PPBA))
                                {
                                    FUNA = One
                                }

                                If (CondRefOf (UPRD))
                                {
                                    FUNB = One
                                }
                            }

                            Return (OPTS) /* \_SB_.PC00.PEG2._DSM.OPTS */
                        }
                        Else
                        {
                            FUN0 = One
                            If ((Arg1 >= 0x02))
                            {
                                If (LTEN)
                                {
                                    FUN6 = One
                                }

                                If (OBFS)
                                {
                                    FUN4 = One
                                }
                            }

                            If ((Arg1 >= 0x03))
                            {
                                If (ECR1)
                                {
                                    FUN8 = One
                                }

                                If (ECR1)
                                {
                                    FUN9 = One
                                }
                            }

                            If ((Arg1 >= 0x04))
                            {
                                If (CondRefOf (PPBA))
                                {
                                    FUNA = One
                                }

                                FUNB = One
                            }

                            Return (OPTS) /* \_SB_.PC00.PEG2._DSM.OPTS */
                        }
                    }
                    Case (0x04)
                    {
                        If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (OBFS)
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x10)
                                    {
                                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                    })
                                }
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If ((Arg1 >= 0x02))
                        {
                            If (LTEN)
                            {
                                LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                LTRV [One] = (LMSL & 0x03FF)
                                LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                LTRV [0x03] = (LNSL & 0x03FF)
                                Return (LTRV) /* \_SB_.PC00.PEG2.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    Case (0x08)
                    {
                        If (CondRefOf (ECR1))
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (One)
                                }
                            }
                        }
                    }
                    Case (0x09)
                    {
                        If (CondRefOf (ECR1))
                        {
                            If ((ECR1 == One))
                            {
                                If ((Arg1 >= 0x03))
                                {
                                    Return (Package (0x05)
                                    {
                                        0xC350, 
                                        Ones, 
                                        Ones, 
                                        0xC350, 
                                        Ones
                                    })
                                }
                            }
                        }
                    }
                    Case (0x0A)
                    {
                        If (CondRefOf (PPBA))
                        {
                            Return (PPBA (Arg3))
                        }
                    }
                    Case (0x0B)
                    {
                        If (CondRefOf (UPRD))
                        {
                            Return (UPRD (Arg3))
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            If ((HPEX == One))
            {
                HPEX = Zero
                HPSX = One
            }

            If ((PMEX == One))
            {
                PMEX = Zero
                PMSX = One
            }
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            If ((HPEX == Zero))
            {
                HPEX = One
                HPSX = One
            }

            If ((PMEX == Zero))
            {
                PMEX = One
                PMSX = One
            }
        }

        Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
        {
            If (CondRefOf (PINI))
            {
                Return (Package (0x04)
                {
                    ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "FundamentalDeviceResetTriggeredOnD3ToD0", 
                            One
                        }
                    }, 

                    ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
                    Package (0x00){}
                })
            }
            Else
            {
                Return (Package (0x02)
                {
                    ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                    Package (0x01)
                    {
                        Package (0x02)
                        {
                            "FundamentalDeviceResetTriggeredOnD3ToD0", 
                            One
                        }
                    }
                })
            }
        }

        If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
        {
            OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
            Field (PEGR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                PSTS,   1, 
                Offset (0x2C), 
                GENG,   1, 
                    ,   1, 
                PMEG,   1
            }
        }

        Method (HPME, 0, Serialized)
        {
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                PSTS = One
            }

            If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
            {
                PMSX = One
                PSPX = One
                Return (One)
            }

            Return (Zero)
        }

        Method (HPEV, 0, Serialized)
        {
            If (((VDID != 0xFFFFFFFF) && HPSX))
            {
                HPSX = One
                If ((PDCX == One))
                {
                    PDCX = One
                    If ((PDSX == Zero))
                    {
                        L0SE = Zero
                    }

                    Notify (^, Zero) // Bus Check
                }
            }
        }
    }

    If (CondRefOf (\_SB.PC00.PEG3))
    {
        Scope (\_SB.PC00.PEG3)
        {
            Name (SLOT, 0x03)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PG3E == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Name (LTEN, Zero)
            Name (LMSL, Zero)
            Name (LNSL, Zero)
            Name (OBFS, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (PRES ())
                {
                    LTEN = LTRW /* External reference */
                    LMSL = SMSL /* External reference */
                    LNSL = SNSL /* External reference */
                    If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                    {
                        OBFS = OBFZ /* External reference */
                    }

                    If (CondRefOf (PINI))
                    {
                        PINI ()
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    If (CondRefOf (\_SB.PC00.PEG3.PPRW))
                    {
                        Return (\_SB.PC00.PEG3.PPRW ())
                    }
                }

                Return (GPRW (0x69, 0x04))
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                {
                    If (PICM)
                    {
                        Return (AR2A) /* External reference */
                    }

                    Return (PD2A) /* External reference */
                }
                Else
                {
                    If (PICM)
                    {
                        Return (AR2B) /* External reference */
                    }

                    Return (PD2B) /* External reference */
                }
            }

            OperationRegion (PXCS, SystemMemory, \_SB.PC00.PC2M (_ADR), 0x1000)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE0), 
                SCB0,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x248), 
                    ,   7, 
                Q0L2,   1, 
                Q0L0,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1, 
                Offset (0x328), 
                Offset (0x32B), 
                LTSM,   8, 
                Offset (0xC20), 
                    ,   4, 
                P0AP,   2, 
                Offset (0xC38), 
                    ,   3, 
                P0RM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Method (L23D, 0, Serialized)
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    Q0L0 = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (Q0L0)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    P0RM = Zero
                    P0AP = Zero
                }
                ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                {
                    If ((SCB0 != One))
                    {
                        Return (Zero)
                    }

                    L23R = One
                    Local0 = Zero
                    While (L23R)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    SCB0 = Zero
                    Local0 = Zero
                    While ((LASX == Zero))
                    {
                        If ((Local0 > 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }
                }
            }

            Method (DL23, 0, Serialized)
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    Q0L2 = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (Q0L2)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    P0RM = One
                    P0AP = 0x03
                }
                ElseIf (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                {
                    L23E = One
                    Sleep (0x10)
                    Local0 = Zero
                    While (L23E)
                    {
                        If ((Local0 > 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Local0++
                    }

                    SCB0 = One
                }
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (PRES, 0, NotSerialized)
            {
                If ((VDID == 0xFFFFFFFF))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Name (OPTS, Buffer (0x02)
                            {
                                 0x00, 0x00                                       // ..
                            })
                            CreateBitField (OPTS, Zero, FUN0)
                            CreateBitField (OPTS, 0x06, FUN6)
                            CreateBitField (OPTS, 0x04, FUN4)
                            CreateBitField (OPTS, 0x08, FUN8)
                            CreateBitField (OPTS, 0x09, FUN9)
                            CreateBitField (OPTS, 0x0A, FUNA)
                            CreateBitField (OPTS, 0x0B, FUNB)
                            If (((\_SB.CPID & 0xFFFFFFF0) == 0x000A0670))
                            {
                                FUN0 = One
                                FUN4 = Zero
                                If ((LTEN == One))
                                {
                                    FUN6 = One
                                }

                                If ((Arg1 >= 0x02))
                                {
                                    If (CondRefOf (ECR1))
                                    {
                                        If ((ECR1 == One))
                                        {
                                            If ((Arg1 >= 0x03))
                                            {
                                                FUN8 = One
                                                FUN9 = One
                                            }
                                        }
                                    }
                                }

                                If ((Arg1 >= 0x04))
                                {
                                    If (CondRefOf (PPBA))
                                    {
                                        FUNA = One
                                    }

                                    If (CondRefOf (UPRD))
                                    {
                                        FUNB = One
                                    }
                                }

                                Return (OPTS) /* \_SB_.PC00.PEG3._DSM.OPTS */
                            }
                            Else
                            {
                                FUN0 = One
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTEN)
                                    {
                                        FUN6 = One
                                    }

                                    If (OBFS)
                                    {
                                        FUN4 = One
                                    }
                                }

                                If ((Arg1 >= 0x03))
                                {
                                    If (ECR1)
                                    {
                                        FUN8 = One
                                    }

                                    If (ECR1)
                                    {
                                        FUN9 = One
                                    }
                                }

                                If ((Arg1 >= 0x04))
                                {
                                    If (CondRefOf (PPBA))
                                    {
                                        FUNA = One
                                    }

                                    FUNB = One
                                }

                                Return (OPTS) /* \_SB_.PC00.PEG3._DSM.OPTS */
                            }
                        }
                        Case (0x04)
                        {
                            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFS)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                        }
                        Case (0x06)
                        {
                            If ((Arg1 >= 0x02))
                            {
                                If (LTEN)
                                {
                                    LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                    LTRV [One] = (LMSL & 0x03FF)
                                    LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                    LTRV [0x03] = (LNSL & 0x03FF)
                                    Return (LTRV) /* \_SB_.PC00.PEG3.LTRV */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                        }
                        Case (0x08)
                        {
                            If (CondRefOf (ECR1))
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (One)
                                    }
                                }
                            }
                        }
                        Case (0x09)
                        {
                            If (CondRefOf (ECR1))
                            {
                                If ((ECR1 == One))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }
                        }
                        Case (0x0A)
                        {
                            If (CondRefOf (PPBA))
                            {
                                Return (PPBA (Arg3))
                            }
                        }
                        Case (0x0B)
                        {
                            If (CondRefOf (UPRD))
                            {
                                Return (UPRD (Arg3))
                            }
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If ((HPEX == One))
                {
                    HPEX = Zero
                    HPSX = One
                }

                If ((PMEX == One))
                {
                    PMEX = Zero
                    PMSX = One
                }
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                If ((HPEX == Zero))
                {
                    HPEX = One
                    HPSX = One
                }

                If ((PMEX == Zero))
                {
                    PMEX = One
                    PMSX = One
                }
            }

            Method (_DSD, 0, NotSerialized)  // _DSD: Device-Specific Data
            {
                If (CondRefOf (PINI))
                {
                    Return (Package (0x04)
                    {
                        ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "FundamentalDeviceResetTriggeredOnD3ToD0", 
                                One
                            }
                        }, 

                        ToUUID ("6b4ad420-8fd3-4364-acf8-eb94876fd9eb") /* Unknown UUID */, 
                        Package (0x00){}
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        ToUUID ("fdf06fad-f744-4451-bb64-ecd792215b10") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "FundamentalDeviceResetTriggeredOnD3ToD0", 
                                One
                            }
                        }
                    })
                }
            }

            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
                Field (PEGR, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x02), 
                    PSTS,   1, 
                    Offset (0x2C), 
                    GENG,   1, 
                        ,   1, 
                    PMEG,   1
                }
            }

            Method (HPME, 0, Serialized)
            {
                If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
                {
                    PSTS = One
                }

                If (((VDID != 0xFFFFFFFF) && (PMSX == One)))
                {
                    PMSX = One
                    PSPX = One
                    Return (One)
                }

                Return (Zero)
            }

            Method (HPEV, 0, Serialized)
            {
                If (((VDID != 0xFFFFFFFF) && HPSX))
                {
                    HPSX = One
                    If ((PDCX == One))
                    {
                        PDCX = One
                        If ((PDSX == Zero))
                        {
                            L0SE = Zero
                        }

                        Notify (^, Zero) // Bus Check
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.PEG0.PEGP)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "StorageD3Enable", 
                    One
                }
            }
        })
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PC00.PEG1.PEGP)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "StorageD3Enable", 
                    One
                }
            }
        })
        If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
        {
            OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
            Field (PCIS, AnyAcc, NoLock, Preserve)
            {
                PVID,   16, 
                PDID,   16
            }
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    Scope (\_SB.PC00.PEG2.PEGP)
    {
        Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
        {
            ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
            Package (0x01)
            {
                Package (0x02)
                {
                    "StorageD3Enable", 
                    One
                }
            }
        })
        If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
        {
            OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
            Field (PCIS, AnyAcc, NoLock, Preserve)
            {
                PVID,   16, 
                PDID,   16
            }
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }
    }

    If (CondRefOf (\_SB.PC00.PEG3))
    {
        Scope (\_SB.PC00.PEG3.PEGP)
        {
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        "StorageD3Enable", 
                        One
                    }
                }
            })
            If (((\_SB.CPID & 0xFFFFFFF0) != 0x000A0670))
            {
                OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
                Field (PCIS, AnyAcc, NoLock, Preserve)
                {
                    PVID,   16, 
                    PDID,   16
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }
    }

    Scope (\_GPE)
    {
        Method (P0L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P0WK))
            {
                \_SB.SHPO (P0WK, One)
                Notify (\_SB.PC00.PEG0, 0x02) // Device Wake
                \_SB.CAGS (P0WK)
            }
        }

        Method (P1L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P1WK))
            {
                \_SB.SHPO (P1WK, One)
                Notify (\_SB.PC00.PEG1, 0x02) // Device Wake
                \_SB.CAGS (P1WK)
            }
        }

        Method (P2L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P2WK))
            {
                \_SB.SHPO (P2WK, One)
                Notify (\_SB.PC00.PEG2, 0x02) // Device Wake
                \_SB.CAGS (P2WK)
            }
        }

        If (CondRefOf (\_SB.PC00.PEG3))
        {
            Method (P3L6, 0, NotSerialized)
            {
                If (\_SB.ISME (P3WK))
                {
                    \_SB.SHPO (P3WK, One)
                    Notify (\_SB.PC00.PEG3, 0x02) // Device Wake
                    \_SB.CAGS (P3WK)
                }
            }
        }
    }
}

