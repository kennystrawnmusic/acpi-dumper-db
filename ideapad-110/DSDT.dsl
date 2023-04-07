/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20221020 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT.bin, Thu Apr  6 17:33:32 2023
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00006D42 (27970)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x3D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "AMD"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "DSDT", 1, "LENOVO", "AMD", 0x00001000)
{
    /*
     * iASL Warning: There were 8 external control methods found during
     * disassembly, but only 0 were resolved (8 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.APTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.AWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.VGA_.AFN4, MethodObj)    // Warning: Unknown method, guessing 4 arguments
    External (_SB_.PCI0.VGA_.AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.TPM_.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (ALIB, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (EDID, IntObj)
    External (M010, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (M029, UnknownObj)
    External (PS2V, UnknownObj)

    Scope (_PR)
    {
        Processor (C000, 0x00, 0x00000810, 0x06){}
        Processor (C001, 0x01, 0x00000810, 0x06){}
        Processor (C002, 0x02, 0x00000810, 0x06){}
        Processor (C003, 0x03, 0x00000810, 0x06){}
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x03, 
        0x03, 
        0x00, 
        0x00
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        0x04, 
        0x00, 
        0x00
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (TZFG, 0x00)
    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        PIDX,   8, 
        PDAT,   8
    }

    OperationRegion (P01, SystemIO, 0x0801, 0x01)
    Field (P01, ByteAcc, NoLock, Preserve)
    {
        PST1,   8
    }

    OperationRegion (CMOS, SystemIO, 0x72, 0x02)
    Field (CMOS, ByteAcc, Lock, Preserve)
    {
        INDX,   8, 
        DATA,   8
    }

    IndexField (INDX, DATA, ByteAcc, Lock, Preserve)
    {
        Offset (0x74), 
        WKSR,   8
    }

    OperationRegion (SMIB, SystemIO, 0xB0, 0x02)
    Field (SMIB, ByteAcc, Lock, Preserve)
    {
        SMIT,   8, 
        SMID,   8
    }

    Scope (_SB)
    {
        Name (LINX, 0x00)
        Name (OSSP, 0x00)
        Name (OSTB, Ones)
        OperationRegion (OSTY, SystemMemory, 0xBE6EFF98, 0x00000001)
        Field (OSTY, AnyAcc, NoLock, Preserve)
        {
            TPOS,   8
        }

        Method (OSTP, 0, NotSerialized)
        {
            If ((OSTB == Ones))
            {
                If (CondRefOf (\_OSI, Local0))
                {
                    OSTB = 0x00
                    TPOS = 0x00
                    If (_OSI ("Windows 2001"))
                    {
                        OSTB = 0x08
                        TPOS = 0x08
                    }

                    If (_OSI ("Windows 2001.1"))
                    {
                        OSTB = 0x20
                        TPOS = 0x20
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        OSTB = 0x10
                        TPOS = 0x10
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        OSTB = 0x11
                        TPOS = 0x11
                    }

                    If (_OSI ("Windows 2001 SP3"))
                    {
                        OSTB = 0x12
                        TPOS = 0x12
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        OSTB = 0x40
                        TPOS = 0x40
                    }

                    If (_OSI ("Windows 2006 SP1"))
                    {
                        OSSP = 0x01
                        OSTB = 0x40
                        TPOS = 0x40
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        OSSP = 0x01
                        OSTB = 0x50
                        TPOS = 0x50
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        OSSP = 0x01
                        OSTB = 0x60
                        TPOS = 0x60
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        OSSP = 0x01
                        OSTB = 0x70
                        TPOS = 0x70
                    }

                    If (_OSI ("Windows 2015"))
                    {
                        OSSP = 0x01
                        OSTB = 0x90
                        TPOS = 0x90
                    }

                    If (_OSI ("Linux"))
                    {
                        LINX = 0x01
                        OSTB = 0x80
                        TPOS = 0x80
                    }
                }
                ElseIf (CondRefOf (\_OS, Local0))
                {
                    If (SEQL (_OS, "Microsoft Windows"))
                    {
                        OSTB = 0x01
                        TPOS = 0x01
                    }
                    ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                    {
                        OSTB = 0x02
                        TPOS = 0x02
                    }
                    ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                    {
                        OSTB = 0x04
                        TPOS = 0x04
                    }
                    Else
                    {
                        OSTB = 0x00
                        TPOS = 0x00
                    }
                }
                Else
                {
                    OSTB = 0x00
                    TPOS = 0x00
                }

                ^PCI0.LPC0.PHS1 (0xB0)
                If ((TPOS == 0x80)){}
            }

            Return (OSTB) /* \_SB_.OSTB */
        }

        Method (SEQL, 2, Serialized)
        {
            Local0 = SizeOf (Arg0)
            Local1 = SizeOf (Arg1)
            If ((Local0 != Local1))
            {
                Return (Zero)
            }

            Name (BUF0, Buffer (Local0){})
            BUF0 = Arg0
            Name (BUF1, Buffer (Local0){})
            BUF1 = Arg1
            Local2 = Zero
            While ((Local2 < Local0))
            {
                Local3 = DerefOf (BUF0 [Local2])
                Local4 = DerefOf (BUF1 [Local2])
                If ((Local3 != Local4))
                {
                    Return (Zero)
                }

                Local2++
            }

            Return (One)
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (((Arg0 < 0x06) && (Arg0 > 0x03)))
        {
            \_SB.TPM.PTS (Arg0)
        }

        If ((Arg0 == 0x05))
        {
            P80H = 0xE5
        }

        If ((Arg0 == 0x04))
        {
            \_SB.PCI0.SMB.PHYD = Zero
            P80H = 0xE4
        }

        If ((Arg0 == 0x03))
        {
            \_SB.PCI0.SMB.RSTU = Zero
            \_SB.PCI0.SMB.BLNK = 0x01
            P80H = 0xE3
        }

        If ((Arg0 == 0x01))
        {
            \_SB.PCI0.SMB.BLNK = 0x02
        }

        \_SB.APTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        \_SB.AWAK (Arg0)
        If ((\_SB.TPOS == 0x80))
        {
            Local0 = 0x01
        }

        If ((\_SB.TPOS == 0x40))
        {
            Local0 = 0x02
        }

        If ((\_SB.TPOS == 0x50))
        {
            Local0 = 0x03
        }

        If ((\_SB.TPOS == 0x60))
        {
            Local0 = 0x04
        }

        If ((\_SB.TPOS == 0x70))
        {
            Local0 = 0x05
        }

        If ((\_SB.TPOS == 0x90))
        {
            Local0 = 0x06
        }

        \_SB.PCI0.LPC0.EC0.OSTY = Local0
        If ((\_SB.TPOS >= 0x40)){}
        If ((\_SB.TPOS == 0x80)){}
        Local0 = TZFG /* \TZFG */
        If (Local0){}
        If ((Arg0 == 0x03))
        {
            \_SB.PCI0.SMB.RSTU = One
            \_SB.PCI0.SMB.SPBT = 0x00
            \_SB.PCI0.SMB.SRBT = 0x00
            If (((WKSR == 0x01) || (WKSR == 0x03)))
            {
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            P80H = 0xF3
        }

        If ((Arg0 == 0x04))
        {
            If (GPIC)
            {
                \_SB.PCI0.LPC0.DSPI ()
            }

            \_SB.PCI0.SMB.PHYD = One
            \_SB.PCI0.LPC0.BCMD = 0x0F
            \_SB.PCI0.LPC0.SMIC = 0xAB
            Notify (\_SB.PWRB, 0x02) // Device Wake
            P80H = 0xF4
        }

        If ((Arg0 == 0x01))
        {
            Local0 = (PST1 & 0x04)
            If ((Local0 == 0x00))
            {
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }
        }

        \_SB.PCI0.SMB.BLNK = 0x03
        Notify (\_SB.PCI0, 0x00) // Bus Check
    }

    Scope (_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If ((Arg0 == 0x01))
            {
                Debug = "===== SST Working ====="
            }

            If ((Arg0 == 0x02))
            {
                Debug = "===== SST Waking ====="
            }

            If ((Arg0 == 0x03))
            {
                Debug = "===== SST Sleeping ====="
            }

            If ((Arg0 == 0x04))
            {
                Debug = "===== SST Sleeping S4 ====="
            }
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        If (Arg0)
        {
            \_SB.PCI0.LPC0.DSPI ()
            \_SB.PCI0.B0FN ()
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
        }

        Device (PCI0)
        {
            Name (_ADR, 0x00)  // _ADR: Address
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (AMHP, 0x00)
            Name (VGPU, 0x00010000)
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If (~(CDW1 & 0x01))
                    {
                        If ((CTRL & 0x01)){}
                        If ((CTRL & 0x04)){}
                        If ((CTRL & 0x10)){}
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                OSTP ()
            }

            OperationRegion (BAR0, PCI_Config, 0xF8, 0x08)
            Field (BAR0, DWordAcc, NoLock, Preserve)
            {
                BINX,   32, 
                BDAT,   32
            }

            Mutex (MUTE, 0x00)
            Method (B0FN, 0, NotSerialized)
            {
                Acquire (MUTE, 0xFFFF)
                BINX = Zero
                Local0 = BDAT /* \_SB_.PCI0.BDAT */
                Local0 &= 0xFFFFFFEF
                BDAT = Local0
                Release (MUTE)
            }

            OperationRegion (NBMS, PCI_Config, 0x60, 0x08)
            Field (NBMS, DWordAcc, NoLock, Preserve)
            {
                MIDX,   32, 
                MIDR,   32
            }

            OperationRegion (NBXP, PCI_Config, 0xE0, 0x08)
            Field (NBXP, DWordAcc, NoLock, Preserve)
            {
                NBXI,   32, 
                NBXD,   32
            }

            Mutex (NBMM, 0x00)
            Mutex (NBXM, 0x00)
            Method (NBMR, 1, NotSerialized)
            {
                Acquire (NBMM, 0xFFFF)
                Local0 = (Arg0 & 0x7F)
                MIDX = Local0
                Local0 = MIDR /* \_SB_.PCI0.MIDR */
                MIDX = 0x7F
                Release (NBMM)
                Return (Local0)
            }

            Method (NBMW, 2, NotSerialized)
            {
                Acquire (NBMM, 0xFFFF)
                Local0 = (Arg0 & 0x7F)
                Local0 |= 0x80
                MIDX = Local0
                MIDR = Arg1
                MIDX = Local0 &= 0x7F
                Release (NBMM)
            }

            Method (NBXR, 1, NotSerialized)
            {
                Acquire (NBXM, 0xFFFF)
                NBXI = Arg0
                Local0 = NBXD /* \_SB_.PCI0.NBXD */
                NBXI = 0x00
                Release (NBXM)
                Return (Local0)
            }

            Method (NBXW, 2, NotSerialized)
            {
                Acquire (NBXM, 0xFFFF)
                NBXI = Arg0
                NBXD = Arg1
                NBXI = 0x00
                Release (NBXM)
            }

            Method (GFXM, 0, NotSerialized)
            {
                Local0 = NBMR (0x08)
                Local0 >>= 0x08
                Local0 &= 0x0F
                Return (Local0)
            }

            Method (GPPM, 0, NotSerialized)
            {
                Local0 = NBMR (0x67)
                Local0 &= 0x0F
                Return (Local0)
            }

            Method (GPPX, 0, NotSerialized)
            {
                Local0 = NBMR (0x2D)
                Local0 >>= 0x07
                Local0 &= 0x0F
                Return (Local0)
            }

            Method (XPTR, 2, NotSerialized)
            {
                If ((Arg0 < 0x02))
                {
                    Return (0x00)
                }

                If (((Arg0 > 0x0A) || (Arg0 == 0x08)))
                {
                    Return (0x00)
                }
                Else
                {
                    Local0 = GPPM ()
                    Local1 = GPPX ()
                    If ((Arg0 == 0x0A))
                    {
                        If (((Local0 == 0x03) && (Local1 == 0x03)))
                        {
                            Local0 = 0x20
                            Local2 = NBMR (0x2D)
                            If (Arg1)
                            {
                                Local2 &= ~Local0
                            }
                            Else
                            {
                                Local2 |= Local0
                            }

                            NBMW (0x2D, Local2)
                            Return (Ones)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    If ((Arg0 == 0x09))
                    {
                        If (((Local0 >= 0x02) && (Local1 >= 0x02)))
                        {
                            Local0 = 0x10
                            Local2 = NBMR (0x2D)
                            If (Arg1)
                            {
                                Local2 &= ~Local0
                            }
                            Else
                            {
                                Local2 |= Local0
                            }

                            NBMW (0x2D, Local2)
                            Return (Ones)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Local0 = 0x01
                    If ((Arg0 < 0x04))
                    {
                        Local1 = (Arg0 + 0x02)
                    }
                    Else
                    {
                        Local1 = (Arg0 + 0x11)
                    }

                    Local0 <<= Local1
                    Local2 = NBMR (0x08)
                    If (Arg1)
                    {
                        Local2 &= ~Local0
                    }
                    Else
                    {
                        Local2 |= Local0
                    }

                    NBMW (0x08, Local2)
                    Return (Ones)
                }
            }

            OperationRegion (K8ST, SystemMemory, 0xBE6EFE18, 0x00000048)
            Field (K8ST, AnyAcc, NoLock, Preserve)
            {
                C0_0,   16, 
                C2_0,   16, 
                C4_0,   16, 
                C6_0,   16, 
                C8_0,   16, 
                CA_0,   16, 
                CC_0,   16, 
                CE_0,   16, 
                D0_0,   16, 
                D2_0,   16, 
                D4_0,   16, 
                D6_0,   16, 
                D8_0,   16, 
                DA_0,   16, 
                DC_0,   16, 
                DE_0,   16, 
                E0_0,   16, 
                E2_0,   16, 
                E4_0,   16, 
                E6_0,   16, 
                E8_0,   16, 
                EA_0,   16, 
                EC_0,   16, 
                EE_0,   16, 
                F0_0,   16, 
                F2_0,   16, 
                F4_0,   16, 
                F6_0,   16, 
                F8_0,   16, 
                FA_0,   16, 
                FC_0,   16, 
                FE_0,   16, 
                TOML,   32, 
                TOMH,   32
            }

            Name (RSRC, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, SubDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    0x00,, )
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C2000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C6000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000C9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CA000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CE000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D2000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D6000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000D9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DA000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y0E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DE000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y0F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E1FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y10, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E2000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y11, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E5FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y12, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E6000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y13, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000E9FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y14, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EA000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y15, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EDFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y16, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EE000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00002000,         // Length
                    0x00,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    0x00,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFC000000,         // Range Minimum
                    0xFDFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x02000000,         // Length
                    0x00,, _Y19, AddressRangeMemory, TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateBitField (RSRC, \_SB.PCI0._Y00._RW, C0RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y00._LEN, C0LN)  // _LEN: Length
                C0RW = One
                C0LN = 0x2000
                If ((C0_0 & 0x1818))
                {
                    C0LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y01._RW, C2RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y01._LEN, C2LN)  // _LEN: Length
                C2RW = One
                C2LN = 0x2000
                If ((C2_0 & 0x1818))
                {
                    C2LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                C4RW = One
                C4LN = 0x2000
                If ((C4_0 & 0x1818))
                {
                    C4LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y03._RW, C6RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y03._LEN, C6LN)  // _LEN: Length
                C6RW = One
                C6LN = 0x2000
                If ((C6_0 & 0x1818))
                {
                    C6LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y04._RW, C8RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y04._LEN, C8LN)  // _LEN: Length
                C8RW = One
                C8LN = 0x2000
                If ((C8_0 & 0x1818))
                {
                    C8LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y05._RW, CARW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y05._LEN, CALN)  // _LEN: Length
                CARW = One
                CALN = 0x2000
                If ((CA_0 & 0x1818))
                {
                    CALN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y06._RW, CCRW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y06._LEN, CCLN)  // _LEN: Length
                CCRW = One
                CCLN = 0x2000
                If ((CC_0 & 0x1818))
                {
                    CCLN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y07._RW, CERW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y07._LEN, CELN)  // _LEN: Length
                CERW = One
                CELN = 0x2000
                If ((CE_0 & 0x1818))
                {
                    CELN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y08._RW, D0RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y08._LEN, D0LN)  // _LEN: Length
                D0RW = One
                D0LN = 0x2000
                If ((D0_0 & 0x1818))
                {
                    D0LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y09._RW, D2RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y09._LEN, D2LN)  // _LEN: Length
                D2RW = One
                D2LN = 0x2000
                If ((D2_0 & 0x1818))
                {
                    D2LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0A._RW, D4RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y0A._LEN, D4LN)  // _LEN: Length
                D4RW = One
                D4LN = 0x2000
                If ((D4_0 & 0x1818))
                {
                    D4LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0B._RW, D6RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y0B._LEN, D6LN)  // _LEN: Length
                D6RW = One
                D6LN = 0x2000
                If ((D6_0 & 0x1818))
                {
                    D6LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0C._RW, D8RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y0C._LEN, D8LN)  // _LEN: Length
                D8RW = One
                D8LN = 0x2000
                If ((D8_0 & 0x1818))
                {
                    D8LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0D._RW, DARW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y0D._LEN, DALN)  // _LEN: Length
                DARW = One
                DALN = 0x2000
                If ((DA_0 & 0x1818))
                {
                    DALN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0E._RW, DCRW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y0E._LEN, DCLN)  // _LEN: Length
                DCRW = One
                DCLN = 0x2000
                If ((DC_0 & 0x1818))
                {
                    DCLN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0F._RW, DERW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y0F._LEN, DELN)  // _LEN: Length
                DERW = One
                DELN = 0x2000
                If ((DE_0 & 0x1818))
                {
                    DELN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y10._RW, E0RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y10._LEN, E0LN)  // _LEN: Length
                E0RW = One
                E0LN = 0x2000
                If ((E0_0 & 0x1818))
                {
                    E0LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y11._RW, E2RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y11._LEN, E2LN)  // _LEN: Length
                E2RW = One
                E2LN = 0x2000
                If ((E2_0 & 0x1818))
                {
                    E2LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y12._RW, E4RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y12._LEN, E4LN)  // _LEN: Length
                E4RW = One
                E4LN = 0x2000
                If ((E4_0 & 0x1818))
                {
                    E4LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y13._RW, E6RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y13._LEN, E6LN)  // _LEN: Length
                E6RW = One
                E6LN = 0x2000
                If ((E6_0 & 0x1818))
                {
                    E6LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y14._RW, E8RW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y14._LEN, E8LN)  // _LEN: Length
                E8RW = One
                E8LN = 0x2000
                If ((E8_0 & 0x1818))
                {
                    E8LN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y15._RW, EARW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y15._LEN, EALN)  // _LEN: Length
                EARW = One
                EALN = 0x2000
                If ((EA_0 & 0x1818))
                {
                    EALN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y16._RW, ECRW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y16._LEN, ECLN)  // _LEN: Length
                ECRW = One
                ECLN = 0x2000
                If ((EC_0 & 0x1818))
                {
                    ECLN = 0x00
                }

                CreateBitField (RSRC, \_SB.PCI0._Y17._RW, EERW)  // _RW_: Read-Write Status
                CreateDWordField (RSRC, \_SB.PCI0._Y17._LEN, EELN)  // _LEN: Length
                EERW = One
                EELN = 0x2000
                If ((EE_0 & 0x1818))
                {
                    EELN = 0x00
                }

                CreateDWordField (RSRC, \_SB.PCI0._Y18._MIN, BT1S)  // _MIN: Minimum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y18._MAX, BT1M)  // _MAX: Maximum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y18._LEN, BT1L)  // _LEN: Length
                CreateDWordField (RSRC, \_SB.PCI0._Y19._MIN, BT2S)  // _MIN: Minimum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y19._MAX, BT2M)  // _MAX: Maximum Base Address
                CreateDWordField (RSRC, \_SB.PCI0._Y19._LEN, BT2L)  // _LEN: Length
                Local0 = 0xF8000000
                BT1S = TOML /* \_SB_.PCI0.TOML */
                BT1M = (Local0 - 0x01)
                BT1L = (Local0 - TOML) /* \_SB_.PCI0.TOML */
                Return (RSRC) /* \_SB_.PCI0.RSRC */
            }

            Device (MEMR)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (MEM1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0F50,             // Range Minimum
                        0x0F50,             // Range Maximum
                        0x01,               // Alignment
                        0x02,               // Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y1A)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y1B)
                    Memory32Fixed (ReadWrite,
                        0xF8000000,         // Address Base
                        0x04000000,         // Address Length
                        )
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y1A._BAS, MB01)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y1A._LEN, ML01)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y1B._BAS, MB02)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y1B._LEN, ML02)  // _LEN: Length
                    If (GPIC)
                    {
                        MB01 = 0xFEC00000
                        MB02 = 0xFEE00000
                        ML01 = 0x2000
                        ML02 = 0x1000
                    }

                    Return (MEM1) /* \_SB_.PCI0.MEMR.MEM1 */
                }
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (GPIC)
                {
                    Return (Package (0x15)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x00, 
                            0x00, 
                            0x2C
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x01, 
                            0x00, 
                            0x2D
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            0x00, 
                            0x2E
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x03, 
                            0x00, 
                            0x2F
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x00, 
                            0x00, 
                            0x30
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x01, 
                            0x00, 
                            0x31
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x02, 
                            0x00, 
                            0x32
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x03, 
                            0x00, 
                            0x33
                        }, 

                        Package (0x04)
                        {
                            0x0010FFFF, 
                            0x00, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0010FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0011FFFF, 
                            0x00, 
                            0x00, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x0012FFFF, 
                            0x00, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0012FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0013FFFF, 
                            0x00, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0013FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x00, 
                            0x00, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x02, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x03, 
                            0x00, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x0016FFFF, 
                            0x00, 
                            0x00, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0016FFFF, 
                            0x01, 
                            0x00, 
                            0x11
                        }
                    })
                }
                Else
                {
                    Return (Package (0x12)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x00, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x01, 
                            ^LPC0.LNKD, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            0x03, 
                            ^LPC0.LNKD, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0011FFFF, 
                            0x00, 
                            ^LPC0.LNKD, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0012FFFF, 
                            0x00, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0012FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0013FFFF, 
                            0x00, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0013FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0016FFFF, 
                            0x00, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0016FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0010FFFF, 
                            0x00, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x00, 
                            ^LPC0.LNKA, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x01, 
                            ^LPC0.LNKB, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x02, 
                            ^LPC0.LNKC, 
                            0x00
                        }, 

                        Package (0x04)
                        {
                            0x0014FFFF, 
                            0x03, 
                            ^LPC0.LNKD, 
                            0x00
                        }
                    })
                }
            }

            OperationRegion (BAR1, PCI_Config, 0x14, 0x04)
            Field (BAR1, ByteAcc, NoLock, Preserve)
            {
                NBBA,   32
            }

            Method (XCMP, 2, NotSerialized)
            {
                If ((0x10 != SizeOf (Arg0)))
                {
                    Return (0x00)
                }

                If ((0x10 != SizeOf (Arg1)))
                {
                    Return (0x00)
                }

                Local0 = 0x00
                While ((Local0 < 0x10))
                {
                    If ((DerefOf (Arg0 [Local0]) != DerefOf (Arg1 [Local0]
                        )))
                    {
                        Return (0x00)
                    }

                    Local0++
                }

                Return (0x01)
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x1C
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x1D
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x1E
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x1F
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }

                OperationRegion (XPEX, SystemMemory, 0xF8012100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, 0x00, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                OperationRegion (XPCB, PCI_Config, 0x58, 0x24)
                Field (XPCB, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    LKCN,   16, 
                    LKST,   16, 
                    Offset (0x1A), 
                        ,   3, 
                    PSDC,   1, 
                        ,   2, 
                    PSDS,   1, 
                    Offset (0x1B), 
                    HPCS,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PMES,   1
                }

                OperationRegion (XPRI, PCI_Config, 0xE0, 0x08)
                Field (XPRI, ByteAcc, NoLock, Preserve)
                {
                    XPIR,   32, 
                    XPID,   32
                }

                Method (XPDL, 0, NotSerialized)
                {
                    Local0 = Zero
                    If ((VC0S & 0x00020000))
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }

                Method (XPRD, 1, NotSerialized)
                {
                    XPIR = Arg0
                    Local0 = XPID /* \_SB_.PCI0.GPP0.XPID */
                    XPIR = 0x00
                    Return (Local0)
                }

                Method (XPWR, 2, NotSerialized)
                {
                    XPIR = Arg0
                    XPID = Arg1
                    XPIR = 0x00
                }

                Method (XPRT, 0, NotSerialized)
                {
                    Local0 = XPRD (0xA2)
                    Local0 &= 0xFFFFFFF8
                    Local1 = (Local0 >> 0x04)
                    Local1 &= 0x07
                    Local0 |= Local1
                    Local0 |= 0x0100
                    XPWR (0xA2, Local0)
                }

                Method (XPPB, 0, NotSerialized)
                {
                    Local0 = _ADR /* \_SB_.PCI0.GPP0._ADR */
                    Local1 = (Local0 >> 0x10)
                    Local1 = (Local1 << 0x03)
                    Local2 = (Local0 & 0x0F)
                    Local3 = (Local1 | Local2)
                    Return (Local3)
                }

                Method (XPCN, 0, NotSerialized)
                {
                    Local1 = 0x00
                    Local0 = XPPB ()
                    If ((0x04 > Local0))
                    {
                        Local1 = 0x00
                    }

                    If ((0x08 > Local0))
                    {
                        Local1 = 0x00010000
                    }

                    If ((0x0B > Local0))
                    {
                        Local1 = 0x00020000
                    }

                    Return (Local1)
                }

                Method (XPPD, 0, NotSerialized)
                {
                    Local0 = XPPB ()
                    Local2 = GPPX ()
                    Local3 = GFXM ()
                    Local1 = 0x00
                    If ((0x10 == Local0))
                    {
                        Local1 = 0xFFFF
                        If (Local3)
                        {
                            Local1 = 0x0F0F
                        }
                    }

                    If ((0x18 == Local0))
                    {
                        Local1 = 0xF0F0
                    }

                    If ((0x20 == Local0))
                    {
                        Local1 = 0x1010
                    }

                    If ((0x28 == Local0))
                    {
                        Local1 = 0x2020
                    }

                    If ((0x30 == Local0))
                    {
                        Local1 = 0x4040
                    }

                    If ((0x38 == Local0))
                    {
                        Local1 = 0x8080
                    }

                    If ((0x48 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x02 == Local2))
                        {
                            Local1 = 0x0303
                        }

                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0101
                        }
                    }

                    If ((0x50 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0202
                        }
                    }

                    Return (Local1)
                }

                Method (XPLP, 1, NotSerialized)
                {
                    Local1 = XPPD ()
                    If ((0x00 != Local1))
                    {
                        Local2 = NBXR ((0x65 + XPCN ()))
                        If (Arg0)
                        {
                            Local2 &= ~Local1
                        }
                        Else
                        {
                            Local2 |= Local1
                        }

                        NBXW ((0x65 + XPCN ()), Local2)
                    }
                }

                Method (XPR2, 0, NotSerialized)
                {
                    Local0 = LKCN /* \_SB_.PCI0.GPP0.LKCN */
                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    Local0 |= 0x20
                    LKCN = Local0
                    Local1 = 0x64
                    Local2 = 0x01
                    While ((Local1 && Local2))
                    {
                        Sleep (0x01)
                        Local3 = LKST /* \_SB_.PCI0.GPP0.LKST */
                        If ((Local3 & 0x0800))
                        {
                            Local1--
                        }
                        Else
                        {
                            Local2 = 0x00
                        }
                    }

                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    If (!Local2)
                    {
                        Return (Ones)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Device (EXTA)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTB)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTC)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTD)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (XPDV)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, 0x00, 0x08)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        PCMS,   32
                    }
                }
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x20
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x21
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x22
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x23
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }

                OperationRegion (XPEX, SystemMemory, 0xF8013100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, 0x00, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                OperationRegion (XPCB, PCI_Config, 0x58, 0x24)
                Field (XPCB, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    LKCN,   16, 
                    LKST,   16, 
                    Offset (0x1A), 
                        ,   3, 
                    PSDC,   1, 
                        ,   2, 
                    PSDS,   1, 
                    Offset (0x1B), 
                    HPCS,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PMES,   1
                }

                OperationRegion (XPRI, PCI_Config, 0xE0, 0x08)
                Field (XPRI, ByteAcc, NoLock, Preserve)
                {
                    XPIR,   32, 
                    XPID,   32
                }

                Method (XPDL, 0, NotSerialized)
                {
                    Local0 = Zero
                    If ((VC0S & 0x00020000))
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }

                Method (XPRD, 1, NotSerialized)
                {
                    XPIR = Arg0
                    Local0 = XPID /* \_SB_.PCI0.GPP1.XPID */
                    XPIR = 0x00
                    Return (Local0)
                }

                Method (XPWR, 2, NotSerialized)
                {
                    XPIR = Arg0
                    XPID = Arg1
                    XPIR = 0x00
                }

                Method (XPRT, 0, NotSerialized)
                {
                    Local0 = XPRD (0xA2)
                    Local0 &= 0xFFFFFFF8
                    Local1 = (Local0 >> 0x04)
                    Local1 &= 0x07
                    Local0 |= Local1
                    Local0 |= 0x0100
                    XPWR (0xA2, Local0)
                }

                Method (XPPB, 0, NotSerialized)
                {
                    Local0 = _ADR /* \_SB_.PCI0.GPP1._ADR */
                    Local1 = (Local0 >> 0x10)
                    Local1 = (Local1 << 0x03)
                    Local2 = (Local0 & 0x0F)
                    Local3 = (Local1 | Local2)
                    Return (Local3)
                }

                Method (XPCN, 0, NotSerialized)
                {
                    Local1 = 0x00
                    Local0 = XPPB ()
                    If ((0x04 > Local0))
                    {
                        Local1 = 0x00
                    }

                    If ((0x08 > Local0))
                    {
                        Local1 = 0x00010000
                    }

                    If ((0x0B > Local0))
                    {
                        Local1 = 0x00020000
                    }

                    Return (Local1)
                }

                Method (XPPD, 0, NotSerialized)
                {
                    Local0 = XPPB ()
                    Local2 = GPPX ()
                    Local3 = GFXM ()
                    Local1 = 0x00
                    If ((0x10 == Local0))
                    {
                        Local1 = 0xFFFF
                        If (Local3)
                        {
                            Local1 = 0x0F0F
                        }
                    }

                    If ((0x18 == Local0))
                    {
                        Local1 = 0xF0F0
                    }

                    If ((0x20 == Local0))
                    {
                        Local1 = 0x1010
                    }

                    If ((0x28 == Local0))
                    {
                        Local1 = 0x2020
                    }

                    If ((0x30 == Local0))
                    {
                        Local1 = 0x4040
                    }

                    If ((0x38 == Local0))
                    {
                        Local1 = 0x8080
                    }

                    If ((0x48 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x02 == Local2))
                        {
                            Local1 = 0x0303
                        }

                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0101
                        }
                    }

                    If ((0x50 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0202
                        }
                    }

                    Return (Local1)
                }

                Method (XPLP, 1, NotSerialized)
                {
                    Local1 = XPPD ()
                    If ((0x00 != Local1))
                    {
                        Local2 = NBXR ((0x65 + XPCN ()))
                        If (Arg0)
                        {
                            Local2 &= ~Local1
                        }
                        Else
                        {
                            Local2 |= Local1
                        }

                        NBXW ((0x65 + XPCN ()), Local2)
                    }
                }

                Method (XPR2, 0, NotSerialized)
                {
                    Local0 = LKCN /* \_SB_.PCI0.GPP1.LKCN */
                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    Local0 |= 0x20
                    LKCN = Local0
                    Local1 = 0x64
                    Local2 = 0x01
                    While ((Local1 && Local2))
                    {
                        Sleep (0x01)
                        Local3 = LKST /* \_SB_.PCI0.GPP1.LKST */
                        If ((Local3 & 0x0800))
                        {
                            Local1--
                        }
                        Else
                        {
                            Local2 = 0x00
                        }
                    }

                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    If (!Local2)
                    {
                        Return (Ones)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Device (EXTA)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTB)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTC)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTD)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (XPDV)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, 0x00, 0x08)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        PCMS,   32
                    }
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00020004)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x24
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x25
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x26
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x27
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKE, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKF, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKG, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKH, 
                                0x00
                            }
                        })
                    }
                }

                OperationRegion (XPEX, SystemMemory, 0xF8024100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, 0x00, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                OperationRegion (XPCB, PCI_Config, 0x58, 0x24)
                Field (XPCB, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    LKCN,   16, 
                    LKST,   16, 
                    Offset (0x1A), 
                        ,   3, 
                    PSDC,   1, 
                        ,   2, 
                    PSDS,   1, 
                    Offset (0x1B), 
                    HPCS,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PMES,   1
                }

                OperationRegion (XPRI, PCI_Config, 0xE0, 0x08)
                Field (XPRI, ByteAcc, NoLock, Preserve)
                {
                    XPIR,   32, 
                    XPID,   32
                }

                Method (XPDL, 0, NotSerialized)
                {
                    Local0 = Zero
                    If ((VC0S & 0x00020000))
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }

                Method (XPRD, 1, NotSerialized)
                {
                    XPIR = Arg0
                    Local0 = XPID /* \_SB_.PCI0.GPP2.XPID */
                    XPIR = 0x00
                    Return (Local0)
                }

                Method (XPWR, 2, NotSerialized)
                {
                    XPIR = Arg0
                    XPID = Arg1
                    XPIR = 0x00
                }

                Method (XPRT, 0, NotSerialized)
                {
                    Local0 = XPRD (0xA2)
                    Local0 &= 0xFFFFFFF8
                    Local1 = (Local0 >> 0x04)
                    Local1 &= 0x07
                    Local0 |= Local1
                    Local0 |= 0x0100
                    XPWR (0xA2, Local0)
                }

                Method (XPPB, 0, NotSerialized)
                {
                    Local0 = _ADR /* \_SB_.PCI0.GPP2._ADR */
                    Local1 = (Local0 >> 0x10)
                    Local1 = (Local1 << 0x03)
                    Local2 = (Local0 & 0x0F)
                    Local3 = (Local1 | Local2)
                    Return (Local3)
                }

                Method (XPCN, 0, NotSerialized)
                {
                    Local1 = 0x00
                    Local0 = XPPB ()
                    If ((0x04 > Local0))
                    {
                        Local1 = 0x00
                    }

                    If ((0x08 > Local0))
                    {
                        Local1 = 0x00010000
                    }

                    If ((0x0B > Local0))
                    {
                        Local1 = 0x00020000
                    }

                    Return (Local1)
                }

                Method (XPPD, 0, NotSerialized)
                {
                    Local0 = XPPB ()
                    Local2 = GPPX ()
                    Local3 = GFXM ()
                    Local1 = 0x00
                    If ((0x10 == Local0))
                    {
                        Local1 = 0xFFFF
                        If (Local3)
                        {
                            Local1 = 0x0F0F
                        }
                    }

                    If ((0x18 == Local0))
                    {
                        Local1 = 0xF0F0
                    }

                    If ((0x20 == Local0))
                    {
                        Local1 = 0x1010
                    }

                    If ((0x28 == Local0))
                    {
                        Local1 = 0x2020
                    }

                    If ((0x30 == Local0))
                    {
                        Local1 = 0x4040
                    }

                    If ((0x38 == Local0))
                    {
                        Local1 = 0x8080
                    }

                    If ((0x48 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x02 == Local2))
                        {
                            Local1 = 0x0303
                        }

                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0101
                        }
                    }

                    If ((0x50 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0202
                        }
                    }

                    Return (Local1)
                }

                Method (XPLP, 1, NotSerialized)
                {
                    Local1 = XPPD ()
                    If ((0x00 != Local1))
                    {
                        Local2 = NBXR ((0x65 + XPCN ()))
                        If (Arg0)
                        {
                            Local2 &= ~Local1
                        }
                        Else
                        {
                            Local2 |= Local1
                        }

                        NBXW ((0x65 + XPCN ()), Local2)
                    }
                }

                Method (XPR2, 0, NotSerialized)
                {
                    Local0 = LKCN /* \_SB_.PCI0.GPP2.LKCN */
                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    Local0 |= 0x20
                    LKCN = Local0
                    Local1 = 0x64
                    Local2 = 0x01
                    While ((Local1 && Local2))
                    {
                        Sleep (0x01)
                        Local3 = LKST /* \_SB_.PCI0.GPP2.LKST */
                        If ((Local3 & 0x0800))
                        {
                            Local1--
                        }
                        Else
                        {
                            Local2 = 0x00
                        }
                    }

                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    If (!Local2)
                    {
                        Return (Ones)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Device (EXTA)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTB)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTC)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTD)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (XPDV)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, 0x00, 0x08)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        PCMS,   32
                    }
                }

                Device (OBLA)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00020005)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x28
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x29
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x2A
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x2B
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }

                OperationRegion (XPEX, SystemMemory, 0xF8025100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, 0x00, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                OperationRegion (XPCB, PCI_Config, 0x58, 0x24)
                Field (XPCB, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10), 
                    LKCN,   16, 
                    LKST,   16, 
                    Offset (0x1A), 
                        ,   3, 
                    PSDC,   1, 
                        ,   2, 
                    PSDS,   1, 
                    Offset (0x1B), 
                    HPCS,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PMES,   1
                }

                OperationRegion (XPRI, PCI_Config, 0xE0, 0x08)
                Field (XPRI, ByteAcc, NoLock, Preserve)
                {
                    XPIR,   32, 
                    XPID,   32
                }

                Method (XPDL, 0, NotSerialized)
                {
                    Local0 = Zero
                    If ((VC0S & 0x00020000))
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }

                Method (XPRD, 1, NotSerialized)
                {
                    XPIR = Arg0
                    Local0 = XPID /* \_SB_.PCI0.GPP3.XPID */
                    XPIR = 0x00
                    Return (Local0)
                }

                Method (XPWR, 2, NotSerialized)
                {
                    XPIR = Arg0
                    XPID = Arg1
                    XPIR = 0x00
                }

                Method (XPRT, 0, NotSerialized)
                {
                    Local0 = XPRD (0xA2)
                    Local0 &= 0xFFFFFFF8
                    Local1 = (Local0 >> 0x04)
                    Local1 &= 0x07
                    Local0 |= Local1
                    Local0 |= 0x0100
                    XPWR (0xA2, Local0)
                }

                Method (XPPB, 0, NotSerialized)
                {
                    Local0 = _ADR /* \_SB_.PCI0.GPP3._ADR */
                    Local1 = (Local0 >> 0x10)
                    Local1 = (Local1 << 0x03)
                    Local2 = (Local0 & 0x0F)
                    Local3 = (Local1 | Local2)
                    Return (Local3)
                }

                Method (XPCN, 0, NotSerialized)
                {
                    Local1 = 0x00
                    Local0 = XPPB ()
                    If ((0x04 > Local0))
                    {
                        Local1 = 0x00
                    }

                    If ((0x08 > Local0))
                    {
                        Local1 = 0x00010000
                    }

                    If ((0x0B > Local0))
                    {
                        Local1 = 0x00020000
                    }

                    Return (Local1)
                }

                Method (XPPD, 0, NotSerialized)
                {
                    Local0 = XPPB ()
                    Local2 = GPPX ()
                    Local3 = GFXM ()
                    Local1 = 0x00
                    If ((0x10 == Local0))
                    {
                        Local1 = 0xFFFF
                        If (Local3)
                        {
                            Local1 = 0x0F0F
                        }
                    }

                    If ((0x18 == Local0))
                    {
                        Local1 = 0xF0F0
                    }

                    If ((0x20 == Local0))
                    {
                        Local1 = 0x1010
                    }

                    If ((0x28 == Local0))
                    {
                        Local1 = 0x2020
                    }

                    If ((0x30 == Local0))
                    {
                        Local1 = 0x4040
                    }

                    If ((0x38 == Local0))
                    {
                        Local1 = 0x8080
                    }

                    If ((0x48 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x02 == Local2))
                        {
                            Local1 = 0x0303
                        }

                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0101
                        }
                    }

                    If ((0x50 == Local0))
                    {
                        Local1 = 0x00
                        If ((0x03 == Local2))
                        {
                            Local1 = 0x0202
                        }
                    }

                    Return (Local1)
                }

                Method (XPLP, 1, NotSerialized)
                {
                    Local1 = XPPD ()
                    If ((0x00 != Local1))
                    {
                        Local2 = NBXR ((0x65 + XPCN ()))
                        If (Arg0)
                        {
                            Local2 &= ~Local1
                        }
                        Else
                        {
                            Local2 |= Local1
                        }

                        NBXW ((0x65 + XPCN ()), Local2)
                    }
                }

                Method (XPR2, 0, NotSerialized)
                {
                    Local0 = LKCN /* \_SB_.PCI0.GPP3.LKCN */
                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    Local0 |= 0x20
                    LKCN = Local0
                    Local1 = 0x64
                    Local2 = 0x01
                    While ((Local1 && Local2))
                    {
                        Sleep (0x01)
                        Local3 = LKST /* \_SB_.PCI0.GPP3.LKST */
                        If ((Local3 & 0x0800))
                        {
                            Local1--
                        }
                        Else
                        {
                            Local2 = 0x00
                        }
                    }

                    Local0 &= 0xFFFFFFDF
                    LKCN = Local0
                    If (!Local2)
                    {
                        Return (Ones)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Device (EXTA)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTB)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTC)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (EXTD)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (XPDV)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (PCFG, PCI_Config, 0x00, 0x08)
                    Field (PCFG, DWordAcc, NoLock, Preserve)
                    {
                        DVID,   32, 
                        PCMS,   32
                    }
                }
            }

            Device (GFX)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x08, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                0x00, 
                                0x18
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                0x00, 
                                0x19
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                0x00, 
                                0x1A
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                0x00, 
                                0x1B
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                0x00, 
                                ^^LPC0.LNKA, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x01, 
                                ^^LPC0.LNKB, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPC0.LNKC, 
                                0x00
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPC0.LNKD, 
                                0x00
                            }
                        })
                    }
                }

                OperationRegion (XPEX, SystemMemory, 0xF8011100, 0x0100)
                Field (XPEX, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x28), 
                    VC0S,   32
                }

                OperationRegion (PCFG, PCI_Config, 0x00, 0x20)
                Field (PCFG, DWordAcc, NoLock, Preserve)
                {
                    DVID,   32, 
                    PCMS,   32, 
                    Offset (0x18), 
                    SBUS,   32
                }

                Device (VGA)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Name (DOSA, 0x00)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x05)
                        {
                            0x00010100, 
                            0x00010110, 
                            0x0200, 
                            0x00010210, 
                            0x00010220
                        })
                    }

                    Device (LCD)
                    {
                        Method (_ADR, 0, NotSerialized)  // _ADR: Address
                        {
                            Return (0x0110)
                        }

                        Name (BRLV, Buffer (0x11)
                        {
                            /* 0000 */  0x52, 0x22, 0x02, 0x08, 0x0E, 0x16, 0x1C, 0x22,  // R"....."
                            /* 0008 */  0x2A, 0x30, 0x36, 0x3E, 0x44, 0x4B, 0x52, 0x58,  // *06>DKRX
                            /* 0010 */  0x64                                             // d
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BRLV) /* \_SB_.PCI0.GFX_.VGA_.LCD_.BRLV */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            If ((^^^^VGA.AF7E == 0x80000001))
                            {
                                Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                                ^^^^VGA.AFN7 (Local0)
                            }
                            Else
                            {
                                Acquire (^^^^LPC0.PSMX, 0xFFFF)
                                ^^^^LPC0.INF0 = 0x01
                                ^^^^LPC0.INF1 = Arg0
                                ^^^^LPC0.PHS1 (0x8A)
                                Release (^^^^LPC0.PSMX)
                            }
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, 0x01)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }
            }

            Name (UPC0, Package (0x04)
            {
                0x00, 
                0xFF, 
                0x00, 
                0x00
            })
            Name (DPLD, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Name (EPLD, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                    /* 0008 */  0x71, 0x0C, 0x80, 0x01, 0x00, 0x00, 0x00, 0x00   // q.......
                }
            })
            Device (XHC0)
            {
                Name (_ADR, 0x00100000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x18, 
                    0x03
                })
                Device (HUBN)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (PRT1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x03, 
                            0x00, 
                            0x00
                        })
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x61, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   // a.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC0.HUBN.PRT1._PLD.PLDP */
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x60, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   // `.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC0.HUBN.PRT2._PLD.PLDP */
                        }
                    }

                    Device (SSP1)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x03, 
                            0x00, 
                            0x00
                        })
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x61, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   // a.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC0.HUBN.SSP1._PLD.PLDP */
                        }
                    }

                    Device (SSP2)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x60, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   // `.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC0.HUBN.SSP2._PLD.PLDP */
                        }
                    }
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x18, 
                    0x03
                })
                Device (HUBN)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (GHUB)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Device (RPT1)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (EPLD) /* \_SB_.PCI0.EPLD */
                            }
                        }

                        Device (RPT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0x00, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (DPLD) /* \_SB_.PCI0.DPLD */
                            }
                        }

                        Device (RPT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0x00, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (DPLD) /* \_SB_.PCI0.DPLD */
                            }
                        }

                        Device (RPT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (EPLD) /* \_SB_.PCI0.EPLD */
                            }
                        }
                    }
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x00130000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x18, 
                    0x03
                })
                Device (HUBN)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (GHUB)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x0,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "UPPER",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Device (RPT1)
                        {
                            Name (_ADR, 0x01)  // _ADR: Address
                            Name (_S3D, 0x03)  // _S3D: S3 Device State
                            Name (_S4D, 0x03)  // _S4D: S4 Device State
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0x00, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }
                        }

                        Device (RPT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Device (CAM2)
                            {
                                Name (_ADR, 0x02)  // _ADR: Address
                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Name (PLXX, Package (0x01)
                                    {
                                        Buffer (0x14)
                                        {
                                            /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x24, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // $.......
                                            /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                        }
                                    })
                                    Return (PLXX) /* \_SB_.PCI0.EHC2.HUBN.GHUB.RPT2.CAM2._PLD.PLXX */
                                }

                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }
                            }

                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Name (PLDP, Package (0x01)
                                {
                                    Buffer (0x10)
                                    {
                                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                        /* 0008 */  0xB0, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                    }
                                })
                                Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.GHUB.RPT2._PLD.PLDP */
                            }
                        }
                    }
                }
            }

            Device (EHC3)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x18, 
                    0x03
                })
            }

            Device (SBAZ)
            {
                Name (_ADR, 0x00140002)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x19, 
                    0x04
                })
            }

            Device (SATA)
            {
                Name (_ADR, 0x00110000)  // _ADR: Address
                Name (B5EN, 0x00)
                Name (BA_5, 0x00)
                Name (SBAR, 0xF0E6D000)
                OperationRegion (SATX, PCI_Config, 0x00, 0x44)
                Field (SATX, AnyAcc, NoLock, Preserve)
                {
                    VIDI,   32, 
                    Offset (0x0A), 
                    STCL,   16, 
                    Offset (0x24), 
                    BA05,   32, 
                    Offset (0x40), 
                    WREN,   1, 
                    Offset (0x42), 
                    DISP,   6
                }

                Field (SATX, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x42), 
                    DIS0,   1, 
                    DIS1,   1, 
                    DIS2,   1, 
                    DIS3,   1, 
                    DIS4,   1, 
                    DIS5,   1
                }

                OperationRegion (FCFG, SystemMemory, 0xF8088000, 0x0100)
                Field (FCFG, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x4C), 
                        ,   2, 
                    DDIC,   1
                }

                Method (GBAA, 0, Serialized)
                {
                    BA_5 = BA05 /* \_SB_.PCI0.SATA.BA05 */
                    If (((BA_5 == 0xFFFFFFFF) || (STCL != 0x0101)))
                    {
                        B5EN = 0x00
                        Return (SBAR) /* \_SB_.PCI0.SATA.SBAR */
                    }
                    Else
                    {
                        B5EN = 0x01
                        Return (BA_5) /* \_SB_.PCI0.SATA.BA_5 */
                    }
                }

                OperationRegion (BAR5, SystemMemory, GBAA (), 0x1000)
                Field (BAR5, AnyAcc, NoLock, Preserve)
                {
                    NPOT,   5, 
                    Offset (0x0C), 
                    PI,     6, 
                    Offset (0x120), 
                        ,   7, 
                    BSY0,   1, 
                    Offset (0x128), 
                    DET0,   4, 
                    Offset (0x129), 
                    IPM0,   4, 
                    Offset (0x1A0), 
                        ,   7, 
                    BSY1,   1, 
                    Offset (0x1A8), 
                    DET1,   4, 
                    Offset (0x1A9), 
                    IPM1,   4, 
                    Offset (0x220), 
                        ,   7, 
                    BSY2,   1, 
                    Offset (0x228), 
                    DET2,   4, 
                    Offset (0x229), 
                    IPM2,   4, 
                    Offset (0x2A0), 
                        ,   7, 
                    BSY3,   1, 
                    Offset (0x2A8), 
                    DET3,   4, 
                    Offset (0x2A9), 
                    IPM3,   4, 
                    Offset (0x320), 
                        ,   7, 
                    BSY4,   1, 
                    Offset (0x328), 
                    DET4,   4, 
                    Offset (0x329), 
                    IPM4,   4, 
                    Offset (0x3A0), 
                        ,   7, 
                    BSY5,   1, 
                    Offset (0x3A8), 
                    DET5,   4, 
                    Offset (0x3A9), 
                    IPM5,   4
                }

                Field (BAR5, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    PI0,    1, 
                    PI1,    1, 
                    PI2,    1, 
                    PI3,    1, 
                    PI4,    1, 
                    PI5,    1
                }

                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    GBAA ()
                }

                Device (PRID)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((STCL == 0x0101))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  // x.......
                        /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  // x.......
                        /* 0010 */  0x1F, 0x00, 0x00, 0x00                           // ....
                    })
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.PRID.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        SPTM = Arg0
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        GBAA ()
                        If ((((TPOS >= 0x40) || (TPOS == 0x04)) && B5EN))
                        {
                            If (IPM0)
                            {
                                Local0 = 0x32
                                While (((BSY0 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (IPM2)
                            {
                                Local0 = 0x32
                                While (((BSY2 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If ((B5EN == 0x00))
                            {
                                Return (0x00)
                            }

                            If ((DET0 == 0x03))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Name (S12P, 0x00)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY0 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         // .F.....
                                }
                            Return (Local0)
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If ((B5EN == 0x00))
                            {
                                Return (0x00)
                            }

                            If ((DET2 == 0x03))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Name (S12P, 0x00)
                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY2 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         // .F.....
                                }
                            Return (Local0)
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((STCL == 0x0101))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Name (SPTM, Buffer (0x14)
                    {
                        /* 0000 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  // x.......
                        /* 0008 */  0x78, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00,  // x.......
                        /* 0010 */  0x1F, 0x00, 0x00, 0x00                           // ....
                    })
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Return (SPTM) /* \_SB_.PCI0.SATA.SECD.SPTM */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        SPTM = Arg0
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        GBAA ()
                        If ((((TPOS >= 0x40) || (TPOS == 0x04)) && B5EN))
                        {
                            If (IPM1)
                            {
                                Local0 = 0x32
                                While (((BSY1 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }

                            If (IPM3)
                            {
                                Local0 = 0x32
                                While (((BSY3 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If ((B5EN == 0x00))
                            {
                                Return (0x00)
                            }

                            If ((DET1 == 0x03))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY1 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         // .F.....
                                }
                            Return (Local0)
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            GBAA ()
                            If ((B5EN == 0x00))
                            {
                                Return (0x00)
                            }

                            If ((DET3 == 0x03))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                        {
                            GBAA ()
                            If ((((TPOS < 0x40) && (TPOS != 0x04)) && B5EN))
                            {
                                Local0 = 0x32
                                While (((BSY3 == 0x01) && Local0))
                                {
                                    Sleep (0xFA)
                                    Local0--
                                }
                            }
                        }

                        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                        {
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Local0 = Buffer (0x07)
                                {
                                     0x03, 0x46, 0x00, 0x00, 0x00, 0xA0, 0xEF         // .F.....
                                }
                            Return (Local0)
                        }
                    }
                }

                Method (ENP, 2, NotSerialized)
                {
                    If ((Arg0 == 0x00))
                    {
                        DIS0 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x01))
                    {
                        DIS1 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x02))
                    {
                        DIS2 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x03))
                    {
                        DIS3 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x04))
                    {
                        DIS4 = ~Arg1
                    }
                    ElseIf ((Arg0 == 0x05))
                    {
                        DIS5 = ~Arg1
                    }

                    WREN = 0x01
                    If ((Arg0 == 0x00))
                    {
                        PI0 = Arg1
                    }
                    ElseIf ((Arg0 == 0x01))
                    {
                        PI1 = Arg1
                    }
                    ElseIf ((Arg0 == 0x02))
                    {
                        PI2 = Arg1
                    }
                    ElseIf ((Arg0 == 0x03))
                    {
                        PI3 = Arg1
                    }
                    ElseIf ((Arg0 == 0x04))
                    {
                        PI4 = Arg1
                    }
                    ElseIf ((Arg0 == 0x05))
                    {
                        PI5 = Arg1
                    }

                    If ((DISP == 0x3F))
                    {
                        PI0 = 0x01
                    }
                    ElseIf ((DIS0 && ((DISP & 0x3E) ^ 0x3E)))
                    {
                        PI0 = 0x00
                    }

                    Local0 = PI /* \_SB_.PCI0.SATA.PI__ */
                    Local1 = 0x00
                    While (Local0)
                    {
                        If ((Local0 & 0x01))
                        {
                            Local1++
                        }

                        Local0 >>= 0x01
                    }

                    NPOT = Local1--
                    WREN = 0x00
                }

                Device (PRT2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((TPOS >= 0x60))
                        {
                            Return (0x0002FFFF)
                        }
                        Else
                        {
                            Return (0x02)
                        }
                    }

                    Device (ESAT)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x01)
                        }
                    }
                }

                Device (PRT3)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((TPOS >= 0x60))
                        {
                            Return (0x0003FFFF)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Device (ESAT)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x01)
                        }
                    }
                }

                Device (PRT4)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((TPOS >= 0x60))
                        {
                            Return (0x0004FFFF)
                        }
                        Else
                        {
                            Return (0x04)
                        }
                    }

                    Device (ESAT)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x01)
                        }
                    }
                }

                Device (PRT5)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        If ((TPOS >= 0x60))
                        {
                            Return (0x0005FFFF)
                        }
                        Else
                        {
                            Return (0x05)
                        }
                    }

                    Device (ESAT)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x01)
                        }
                    }
                }
            }

            Device (SMB)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                OperationRegion (SBRV, PCI_Config, 0x08, 0x0100)
                Field (SBRV, AnyAcc, NoLock, Preserve)
                {
                    RVID,   8, 
                    Offset (0x5A), 
                    I1F,    1, 
                    I12F,   1, 
                    Offset (0x7A), 
                        ,   2, 
                    G31O,   1, 
                    Offset (0xD9), 
                        ,   6, 
                    ACIR,   1
                }

                OperationRegion (PMIO, SystemIO, 0x0CD6, 0x02)
                Field (PMIO, ByteAcc, NoLock, Preserve)
                {
                    INPM,   8, 
                    DAPM,   8
                }

                IndexField (INPM, DAPM, ByteAcc, NoLock, Preserve)
                {
                    HPAD,   32, 
                    Offset (0x60), 
                    P1EB,   16
                }

                OperationRegion (ERMG, SystemMemory, 0xFED81500, 0x03FF)
                Field (ERMG, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x18), 
                    Offset (0x1A), 
                    GE10,   1, 
                    Offset (0x1C), 
                    Offset (0x1E), 
                    GE11,   1, 
                    Offset (0x40), 
                    Offset (0x42), 
                    GE12,   1, 
                    Offset (0x108), 
                    Offset (0x10A), 
                    P33I,   1, 
                    Offset (0x10C), 
                    Offset (0x10E), 
                    P37I,   1, 
                    Offset (0x118), 
                    Offset (0x11A), 
                    P3BI,   1, 
                    Offset (0x11C), 
                    Offset (0x11E), 
                    P40I,   1
                }

                OperationRegion (ERMM, SystemMemory, 0xFED80000, 0x1000)
                Field (ERMM, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x200), 
                        ,   1, 
                    E01S,   1, 
                        ,   3, 
                    E05S,   1, 
                        ,   9, 
                    E15S,   1, 
                    E16S,   1, 
                        ,   5, 
                    E22S,   1, 
                    Offset (0x204), 
                        ,   1, 
                    E01E,   1, 
                        ,   3, 
                    E05E,   1, 
                        ,   9, 
                    E15E,   1, 
                    E16E,   1, 
                        ,   5, 
                    E22E,   1, 
                    Offset (0x208), 
                        ,   1, 
                    E01C,   1, 
                        ,   3, 
                    E05C,   1, 
                        ,   4, 
                    E10C,   1, 
                        ,   4, 
                    E15C,   1, 
                    E16C,   1, 
                        ,   4, 
                    E21C,   1, 
                    E22C,   1, 
                        ,   3, 
                    E26C,   1, 
                    Offset (0x20C), 
                        ,   1, 
                    E01L,   1, 
                        ,   3, 
                    E05L,   1, 
                        ,   9, 
                    E15L,   1, 
                    E16L,   1, 
                        ,   5, 
                    E22L,   1, 
                    Offset (0x288), 
                        ,   1, 
                    CLPS,   1, 
                    Offset (0x299), 
                        ,   7, 
                    G15A,   1, 
                    Offset (0x2AC), 
                        ,   6, 
                    SRBT,   2, 
                    Offset (0x2B0), 
                        ,   2, 
                    SLPS,   2, 
                    Offset (0x2B2), 
                        ,   4, 
                    SPBT,   2, 
                    Offset (0x362), 
                        ,   6, 
                    MT3A,   1, 
                    Offset (0x377), 
                    EPNM,   1, 
                    DPPF,   1, 
                    Offset (0x3BB), 
                        ,   6, 
                    PWDE,   1, 
                    Offset (0x3BE), 
                        ,   5, 
                    ALLS,   1, 
                    Offset (0x3C8), 
                        ,   2, 
                    TFTE,   1, 
                    Offset (0x3DF), 
                    BLNK,   2, 
                    Offset (0x3F0), 
                    PHYD,   1, 
                        ,   1, 
                    RSTU,   1, 
                    US5R,   1, 
                    Offset (0x400), 
                    F0CT,   8, 
                    F0MS,   8, 
                    F0FQ,   8, 
                    F0LD,   8, 
                    F0MD,   8, 
                    F0MP,   8, 
                    LT0L,   8, 
                    LT0H,   8, 
                    MT0L,   8, 
                    MT0H,   8, 
                    HT0L,   8, 
                    HT0H,   8, 
                    LRG0,   8, 
                    LHC0,   8, 
                    Offset (0x410), 
                    F1CT,   8, 
                    F1MS,   8, 
                    F1FQ,   8, 
                    F1LD,   8, 
                    F1MD,   8, 
                    F1MP,   8, 
                    LT1L,   8, 
                    LT1H,   8, 
                    MT1L,   8, 
                    MT1H,   8, 
                    HT1L,   8, 
                    HT1H,   8, 
                    LRG1,   8, 
                    LHC1,   8, 
                    Offset (0x420), 
                    F2CT,   8, 
                    F2MS,   8, 
                    F2FQ,   8, 
                    F2LD,   8, 
                    F2MD,   8, 
                    F2MP,   8, 
                    LT2L,   8, 
                    LT2H,   8, 
                    MT2L,   8, 
                    MT2H,   8, 
                    HT2L,   8, 
                    HT2H,   8, 
                    LRG2,   8, 
                    LHC2,   8, 
                    Offset (0x430), 
                    F3CT,   8, 
                    F3MS,   8, 
                    F3FQ,   8, 
                    F3LD,   8, 
                    F3MD,   8, 
                    F3MP,   8, 
                    LT3L,   8, 
                    LT3H,   8, 
                    MT3L,   8, 
                    MT3H,   8, 
                    HT3L,   8, 
                    HT3H,   8, 
                    LRG3,   8, 
                    LHC3,   8, 
                    Offset (0x700), 
                    SEC,    8, 
                    Offset (0x702), 
                    MIN,    8, 
                    Offset (0xD01), 
                    MX01,   8, 
                    Offset (0xD07), 
                    MX07,   8, 
                    Offset (0xD0E), 
                    MX14,   8, 
                    MX15,   8, 
                    MX16,   8, 
                    Offset (0xD15), 
                    MX21,   8, 
                    MX22,   8, 
                    MX23,   8, 
                    Offset (0xD1B), 
                    MX27,   8, 
                    MX28,   8, 
                    Offset (0xD20), 
                    MX32,   8, 
                    MX33,   8, 
                    MX34,   8, 
                    Offset (0xD29), 
                    MX41,   8, 
                    Offset (0xD2C), 
                    MX44,   8, 
                    Offset (0xD33), 
                    MX51,   8, 
                    Offset (0xD35), 
                    MX53,   8, 
                    Offset (0xD39), 
                    MX57,   8, 
                    MX58,   8, 
                    MX59,   8, 
                    Offset (0xD42), 
                    MX66,   8, 
                    Offset (0xD66), 
                    M102,   8, 
                    Offset (0xD6C), 
                    M108,   8, 
                    Offset (0xDAA), 
                    M170,   8, 
                    Offset (0xDAF), 
                    M175,   8, 
                    M176,   8, 
                    Offset (0xDB4), 
                    M180,   8, 
                    M181,   8, 
                    M182,   8, 
                    Offset (0xDC5), 
                    M197,   8, 
                    Offset (0xDC7), 
                    M199,   8, 
                    M200,   8, 
                    Offset (0xE00), 
                    MS00,   8, 
                    MS01,   8, 
                    MS02,   8, 
                    MS03,   8, 
                    MS04,   8, 
                    Offset (0xE40), 
                    MS40,   8, 
                    Offset (0xE81), 
                        ,   2, 
                    ECES,   1
                }

                OperationRegion (P1E0, SystemIO, P1EB, 0x04)
                Field (P1E0, ByteAcc, NoLock, Preserve)
                {
                        ,   14, 
                    PEWS,   1, 
                    WSTA,   1, 
                        ,   14, 
                    PEWD,   1
                }

                Method (TRMD, 0, NotSerialized)
                {
                    TFTE = Zero
                }

                Method (HTCD, 0, NotSerialized)
                {
                }

                OperationRegion (ABIO, SystemIO, 0x0CD8, 0x08)
                Field (ABIO, DWordAcc, NoLock, Preserve)
                {
                    INAB,   32, 
                    DAAB,   32
                }

                Method (RDAB, 1, NotSerialized)
                {
                    INAB = Arg0
                    Return (DAAB) /* \_SB_.PCI0.SMB_.DAAB */
                }

                Method (WTAB, 2, NotSerialized)
                {
                    INAB = Arg0
                    DAAB = Arg1
                }

                Method (RWAB, 3, NotSerialized)
                {
                    Local0 = (RDAB (Arg0) & Arg1)
                    Local1 = (Local0 | Arg2)
                    WTAB (Arg0, Local1)
                }

                Method (CABR, 3, NotSerialized)
                {
                    Local0 = (Arg0 << 0x05)
                    Local1 = (Local0 + Arg1)
                    Local2 = (Local1 << 0x18)
                    Local3 = (Local2 + Arg2)
                    Return (Local3)
                }
            }

            Device (LPC0)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
                Field (PIRQ, ByteAcc, NoLock, Preserve)
                {
                    PIID,   8, 
                    PIDA,   8
                }

                IndexField (PIID, PIDA, ByteAcc, NoLock, Preserve)
                {
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x10), 
                    PIRS,   8, 
                    Offset (0x13), 
                    HDAD,   8, 
                    Offset (0x30), 
                    USB1,   8, 
                    USB2,   8, 
                    USB3,   8, 
                    USB4,   8, 
                    USB5,   8, 
                    USB6,   8, 
                    USB7,   8, 
                    Offset (0x40), 
                    IDE,    8, 
                    SATA,   8
                }

                Name (IPRS, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Shared, )
                        {3,4,5,7,10,11,12,14,15}
                })
                Name (UPRS, ResourceTemplate ()
                {
                    IRQ (Level, ActiveLow, Exclusive, )
                        {3,4,5,7}
                })
                OperationRegion (KBDD, SystemIO, 0x64, 0x01)
                Field (KBDD, ByteAcc, NoLock, Preserve)
                {
                    PD64,   8
                }

                Method (DSPI, 0, NotSerialized)
                {
                    INTA (0x1F)
                    INTB (0x1F)
                    INTC (0x1F)
                    INTD (0x1F)
                    Local1 = PD64 /* \_SB_.PCI0.LPC0.PD64 */
                    PIRE = 0x1F
                    PIRF = 0x1F
                    PIRG = 0x1F
                    PIRH = 0x1F
                }

                Method (INTA, 1, NotSerialized)
                {
                    PIRA = Arg0
                    HDAD = Arg0
                }

                Method (INTB, 1, NotSerialized)
                {
                    PIRB = Arg0
                    USB2 = Arg0
                    USB4 = Arg0
                    USB6 = Arg0
                    IDE = Arg0
                }

                Method (INTC, 1, NotSerialized)
                {
                    PIRC = Arg0
                    USB1 = Arg0
                    USB3 = Arg0
                    USB5 = Arg0
                    USB7 = Arg0
                }

                Method (INTD, 1, NotSerialized)
                {
                    PIRD = Arg0
                    SATA = Arg0
                }

                Device (LNKA)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x01)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRA)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTA (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRA) /* \_SB_.PCI0.LPC0.PIRA */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTA (Local0)
                    }
                }

                Device (LNKB)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRB)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTB (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRB) /* \_SB_.PCI0.LPC0.PIRB */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTB (Local0)
                    }
                }

                Device (LNKC)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRC)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTC (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRC) /* \_SB_.PCI0.LPC0.PIRC */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTC (Local0)
                    }
                }

                Device (LNKD)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRD)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        INTD (0x1F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRD) /* \_SB_.PCI0.LPC0.PIRD */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        INTD (Local0)
                    }
                }

                Device (LNKE)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRE)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRE = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRE) /* \_SB_.PCI0.LPC0.PIRE */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRE = Local0
                    }
                }

                Device (LNKF)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRF)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRF = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRF) /* \_SB_.PCI0.LPC0.PIRF */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRF = Local0
                    }
                }

                Device (LNKG)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRG)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRG = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRG) /* \_SB_.PCI0.LPC0.PIRG */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRG = Local0
                    }
                }

                Device (LNKH)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x08)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (PIRH)
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                    {
                        Return (IPRS) /* \_SB_.PCI0.LPC0.IPRS */
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                        PIRH = 0x1F
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Local0 = IPRS /* \_SB_.PCI0.LPC0.IPRS */
                        CreateWordField (Local0, 0x01, IRQ0)
                        IRQ0 = (0x01 << PIRH) /* \_SB_.PCI0.LPC0.PIRH */
                        Return (Local0)
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PIRH = Local0
                    }
                }

                OperationRegion (LPCR, PCI_Config, 0x04, 0x42)
                Field (LPCR, ByteAcc, NoLock, Preserve)
                {
                    PCMD,   2, 
                    Offset (0x40), 
                    CMA0,   1, 
                    CMA1,   1, 
                    CMA2,   1, 
                    CMA3,   1, 
                    CMA4,   1, 
                    CMA5,   1, 
                    CMA6,   1, 
                    CMA7,   1, 
                    CMB0,   1, 
                    CMB1,   1, 
                    CMB2,   1, 
                    CMB3,   1, 
                    CMB4,   1, 
                    CMB5,   1, 
                    CMB6,   1, 
                    CMB7,   1
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x1F,               // Length
                            )
                        IO (Decode16,
                            0x040B,             // Range Minimum
                            0x040B,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {2}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {8}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TIME)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {0}
                    })
                }

                Device (KBC0)
                {
                    Name (_HID, "PTL0001")  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                    }
                }

                Device (MSE0)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If ((PS2V == 0x01))
                        {
                            Return (0x5E068416)
                        }
                        ElseIf ((PS2V == 0x02))
                        {
                            Return (0x732B2E4F)
                        }
                        Else
                        {
                            Return (0x130FD041)
                        }
                    }

                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        If ((PS2V == 0x01))
                        {
                            Return (Package (0x02)
                            {
                                0x8416, 
                                0x130FD041
                            })
                        }
                        ElseIf ((PS2V == 0x02))
                        {
                            Return (Package (0x03)
                            {
                                0x130FD041, 
                                0x02002E4F, 
                                0x002B2E4F
                            })
                        }
                        Else
                        {
                            Return (0x130FD041)
                        }
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((PS2V == 0x02))
                        {
                            Return (0x0F)
                        }
                        ElseIf ((PS2V == 0x01))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0530,             // Range Minimum
                            0x0530,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x28,               // Length
                            )
                        IO (Decode16,
                            0x0830,             // Range Minimum
                            0x0830,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0840,             // Range Minimum
                            0x0840,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0B00,             // Range Minimum
                            0x0B00,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0B20,             // Range Minimum
                            0x0B20,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD2,             // Range Minimum
                            0x0CD2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD4,             // Range Minimum
                            0x0CD4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD6,             // Range Minimum
                            0x0CD6,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0CD8,             // Range Minimum
                            0x0CD8,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0CF9,             // Range Minimum
                            0x0CF9,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                            0x0000,             // Granularity
                            0x8100,             // Range Minimum
                            0x81FF,             // Range Maximum
                            0x0000,             // Translation Offset
                            0x0100,             // Length
                            ,, , TypeStatic, DenseTranslation)
                        WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                            0x0000,             // Granularity
                            0x8200,             // Range Minimum
                            0x82FF,             // Range Maximum
                            0x0000,             // Translation Offset
                            0x0100,             // Length
                            ,, , TypeStatic, DenseTranslation)
                    })
                }

                OperationRegion (LPCS, PCI_Config, 0xA0, 0x04)
                Field (LPCS, DWordAcc, NoLock, Preserve)
                {
                    SPBA,   32
                }

                Device (MEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (MSRC, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x000E0000,         // Address Base
                            0x00020000,         // Address Length
                            )
                        Memory32Fixed (ReadOnly,
                            0xFF800000,         // Address Base
                            0x00800000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y1C)
                        Memory32Fixed (ReadWrite,
                            0xFEC10000,         // Address Base
                            0x00000020,         // Address Length
                            _Y1D)
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED61000,         // Address Base
                            0x00000400,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED80000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y1C._BAS, BARX)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y1C._LEN, GALN)  // _LEN: Length
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y1D._BAS, MB01)  // _BAS: Base Address
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y1D._LEN, ML01)  // _LEN: Length
                        Local0 = SPBA /* \_SB_.PCI0.LPC0.SPBA */
                        MB01 = (Local0 & 0xFFFFFFE0)
                        Local0 = NBBA /* \_SB_.PCI0.NBBA */
                        If (Local0)
                        {
                            GALN = 0x1000
                            BARX = (Local0 & 0xFFFFFFF0)
                        }

                        Return (MSRC) /* \_SB_.PCI0.LPC0.MEM_.MSRC */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }
                }

                Mutex (PSMX, 0x00)
                OperationRegion (SMI0, SystemIO, 0xB0, 0x01)
                Field (SMI0, AnyAcc, NoLock, Preserve)
                {
                    SMIC,   8
                }

                OperationRegion (SMI1, SystemMemory, 0xBD727018, 0x00001000)
                Field (SMI1, AnyAcc, NoLock, Preserve)
                {
                    BCMD,   16, 
                    DID,    32, 
                    INFO,   1024
                }

                Field (SMI1, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x06), 
                    INF0,   8, 
                    INF1,   8, 
                    INF2,   8, 
                    INF3,   8, 
                    INF4,   8, 
                    INF5,   8, 
                    INF6,   8, 
                    INF7,   8
                }

                Field (SMI1, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x06), 
                    INFD,   32
                }

                Method (PHS1, 1, NotSerialized)
                {
                    BCMD = Arg0
                    SMIC = 0xAB
                }

                Method (PHS2, 2, NotSerialized)
                {
                    Acquire (PSMX, 0xFFFF)
                    DID = 0x00
                    INFO = Arg1
                    BCMD = Arg0
                    SMIC = 0xAB
                    Local0 = INFO /* \_SB_.PCI0.LPC0.INFO */
                    Release (PSMX)
                    BCMD = 0x00
                    Return (Local0)
                }

                Method (PHS3, 3, NotSerialized)
                {
                    Acquire (PSMX, 0xFFFF)
                    BCMD = Arg0
                    DID = Arg1
                    INFO = Arg2
                    SMIC = 0xAB
                    Release (PSMX)
                }

                Scope (\_SB)
                {
                    Name (LITS, 0x80000000)
                }

                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, 0x01)  // _UID: Unique ID
                    Name (_GPE, 0x03)  // _GPE: General Purpose Events
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Name (ECOK, 0x00)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((TPOS == 0x80))
                        {
                            Local0 = 0x01
                        }

                        If ((TPOS == 0x40))
                        {
                            Local0 = 0x02
                        }

                        If ((TPOS == 0x50))
                        {
                            Local0 = 0x03
                        }

                        If ((TPOS == 0x60))
                        {
                            Local0 = 0x04
                        }

                        If ((TPOS == 0x70))
                        {
                            Local0 = 0x05
                        }

                        If ((TPOS == 0x90))
                        {
                            Local0 = 0x06
                        }

                        OSTY = Local0
                        If ((Arg0 == 0x03))
                        {
                            ECOK = Arg1
                            Debug = "after set ECOK"
                            Notify (ACAD, 0x80) // Status Change
                            Notify (BATT, 0x80) // Status Change
                            If (ECOK)
                            {
                                Acquire (ECMT, 0xFFFF)
                                Release (ECMT)
                            }
                        }
                    }

                    Mutex (ECMT, 0x00)
                    OperationRegion (ERAM, EmbeddedControl, 0x00, 0xFF)
                    Field (ERAM, ByteAcc, Lock, Preserve)
                    {
                        VCMD,   8, 
                        VDAT,   8, 
                        VSTS,   8, 
                        Offset (0x06), 
                        FANS,   8, 
                        BUSG,   1, 
                        BLEG,   1, 
                        BATF,   1, 
                        BNSM,   1, 
                        BTST,   1, 
                        BBAD,   1, 
                        AUTO,   1, 
                        FCHG,   1, 
                        ABTL,   8, 
                        DBTL,   8, 
                        EDCC,   1, 
                        ALSC,   1, 
                        CDMB,   1, 
                        CCSB,   1, 
                        BTSM,   1, 
                        BTCM,   1, 
                        LBTM,   1, 
                        CSBM,   1, 
                        SGST,   1, 
                        HDMI,   1, 
                        HYBD,   1, 
                        SWST,   1, 
                        EVNT,   1, 
                        DCRF,   1, 
                        COLR,   1, 
                        SGCN,   1, 
                        ODPO,   1, 
                        EODD,   1, 
                        ODPK,   1, 
                        CMEX,   1, 
                        CMON,   1, 
                        SODD,   1, 
                        ODFB,   1, 
                        EODS,   1, 
                        RTMP,   8, 
                        VTMP,   8, 
                        AFCC,   8, 
                        PINF,   3, 
                        SUPR,   1, 
                        GTMP,   1, 
                        QUIT,   1, 
                        LS35,   1, 
                        Offset (0x11), 
                        RMBT,   1, 
                        RSBT,   1, 
                        VTYP,   2, 
                        Offset (0x12), 
                        FUSL,   8, 
                        FUSH,   8, 
                        FWBT,   64, 
                        Offset (0x43), 
                        ECTP,   8, 
                        Offset (0x4A), 
                        ESMC,   1, 
                        Offset (0x4B), 
                        EMOD,   8, 
                        BFUD,   16, 
                        Offset (0x5D), 
                        EXSI,   8, 
                        EXSB,   8, 
                        EXND,   8, 
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMDA,   256, 
                        BCNT,   8, 
                        SMAA,   8, 
                        SAD0,   8, 
                        SAD1,   8, 
                        Offset (0x8A), 
                        KBLO,   1, 
                        UCHE,   1, 
                        KLCH,   1, 
                            ,   1, 
                        KLFS,   1, 
                        KLOR,   1, 
                        UCHR,   1, 
                        UCER,   1, 
                        TPDV,   3, 
                        Offset (0x8C), 
                        QCHO,   1, 
                        BKLT,   1, 
                        Offset (0x8F), 
                        BMN0,   72, 
                        BDN0,   64, 
                        IBTL,   1, 
                        IBCL,   1, 
                        ISS0,   1, 
                        IRTC,   1, 
                        ISUP,   1, 
                        ISC2,   1, 
                        IWAK,   1, 
                        Offset (0xA1), 
                            ,   1, 
                        VOUT,   1, 
                        TPAD,   1, 
                        HKDB,   1, 
                        Offset (0xA2), 
                        Offset (0xA3), 
                        OSTY,   3, 
                            ,   1, 
                        ADPI,   2, 
                            ,   1, 
                        ADPT,   1, 
                        PMEW,   1, 
                        MODW,   1, 
                        LANW,   1, 
                        RTCW,   1, 
                        WLAW,   1, 
                        USBW,   1, 
                        KEYW,   1, 
                        TPWK,   1, 
                        CHCR,   1, 
                        ADPP,   1, 
                        LERN,   1, 
                        ACMD,   1, 
                        BOVP,   1, 
                        LEAK,   1, 
                        AIRP,   1, 
                        ACOF,   1, 
                        S3EN,   1, 
                        S3RS,   1, 
                        S4EN,   1, 
                        S4RS,   1, 
                        S5EN,   1, 
                        S5RS,   1, 
                        Offset (0xA7), 
                        OSTT,   8, 
                        OSST,   8, 
                        THRT,   8, 
                        TCOT,   8, 
                        MODE,   1, 
                            ,   2, 
                        INIT,   1, 
                        FAN1,   1, 
                        FAN2,   1, 
                        FAOK,   1, 
                        SKIN,   1, 
                        SDTE,   8, 
                        SPDN,   4, 
                        FNUM,   4, 
                        TLVL,   4, 
                            ,   2, 
                        THSW,   1, 
                        TPIN,   1, 
                        TSTH,   1, 
                        TSCP,   1, 
                            ,   2, 
                        PLVL,   4, 
                        CPUT,   8, 
                        CPTL,   8, 
                        Offset (0xB7), 
                            ,   1, 
                        PWDB,   1, 
                        DIGT,   1, 
                        CDLK,   1, 
                        Offset (0xB8), 
                            ,   1, 
                        LSTE,   1, 
                        PMEE,   1, 
                        PWBE,   1, 
                        RNGE,   1, 
                        BTWE,   1, 
                        Offset (0xB9), 
                        LCBV,   8, 
                        AOAC,   1, 
                        S35F,   1, 
                        IFFS,   1, 
                        INS0,   1, 
                        ISBL,   1, 
                        ISOV,   1, 
                            ,   1, 
                        ISRT,   1, 
                        WLAN,   1, 
                        BLUE,   1, 
                        WEXT,   1, 
                        BEXT,   1, 
                        KILL,   1, 
                        WLOK,   1, 
                        EN3G,   1, 
                        EX3G,   1, 
                        KPID,   8, 
                        CTYP,   3, 
                        CORE,   3, 
                        GATY,   2, 
                        BA1P,   1, 
                        BA2P,   1, 
                            ,   2, 
                        B1CH,   1, 
                        B2CH,   1, 
                        Offset (0xBF), 
                        PBY1,   1, 
                        PBY2,   1, 
                            ,   2, 
                        SMB1,   1, 
                        SMB2,   1, 
                        Offset (0xC0), 
                        B1TY,   1, 
                        B1MD,   1, 
                        B1LW,   1, 
                            ,   1, 
                        B1MF,   3, 
                        Offset (0xC1), 
                        B1ST,   8, 
                        B1RC,   16, 
                        B1SN,   16, 
                        B1FV,   16, 
                        B1DV,   16, 
                        B1DC,   16, 
                        B1FC,   16, 
                        B1GS,   8, 
                        B1CT,   8, 
                        B1CR,   16, 
                        B1AC,   16, 
                        B1PC,   8, 
                        B1VL,   8, 
                        B1TM,   8, 
                        B1AT,   8, 
                        B1CC,   16, 
                        B1TC,   8, 
                        B1CI,   8, 
                        B1CU,   8, 
                        B1CA,   8, 
                        B1SM,   16, 
                        B1VC,   8, 
                        B1FA,   8, 
                        B1VA,   8, 
                        B1C1,   16, 
                        B1C2,   16, 
                        B1C3,   16, 
                        B1C4,   16, 
                        Offset (0xF0), 
                        B1EX,   1, 
                        B1FL,   1, 
                        B1EP,   1, 
                        B1FI,   1, 
                            ,   2, 
                        B1RE,   1, 
                        Offset (0xF1), 
                        B1LL,   1, 
                        B1CE,   1, 
                        B1SE,   1, 
                        B1S5,   1, 
                        B1SR,   1, 
                        B1SC,   1, 
                        Offset (0xF2), 
                        B1TO,   1, 
                        B1BC,   1, 
                        B1CF,   1, 
                        B1CS,   1, 
                        B1SG,   1, 
                        B1SU,   1, 
                        B1OV,   1, 
                        B1OT,   1, 
                        B1TT,   1, 
                        B1SA,   1, 
                        B1SS,   1, 
                            ,   1, 
                        B1SF,   1, 
                        B1WN,   1, 
                        Offset (0xF4), 
                        B1DA,   16, 
                        Offset (0xF8), 
                        B1CN,   8, 
                        Offset (0xFB)
                    }

                    OperationRegion (CMDE, SystemIO, 0x68, 0x05)
                    Field (CMDE, ByteAcc, Lock, Preserve)
                    {
                        EC68,   8, 
                        Offset (0x02), 
                        Offset (0x03), 
                        Offset (0x04), 
                        EC6C,   8
                    }

                    Method (WIBE, 0, Serialized)
                    {
                        Local0 = 0x00010000
                        While (Local0)
                        {
                            Local1 = EC6C /* \_SB_.PCI0.LPC0.EC0_.EC6C */
                            If (((Local1 & 0x02) == 0x00))
                            {
                                Return (0x00)
                            }

                            Stall (0x0A)
                            Local0--
                        }

                        Return (0x01)
                    }

                    Method (WOBF, 0, Serialized)
                    {
                        Local0 = 0x00010000
                        While (Local0)
                        {
                            Local1 = EC6C /* \_SB_.PCI0.LPC0.EC0_.EC6C */
                            If (((Local1 & 0x01) == 0x01))
                            {
                                Return (0x00)
                            }

                            Stall (0x0A)
                            Local0--
                        }

                        Return (0x01)
                    }

                    Method (WOBE, 0, Serialized)
                    {
                        Local0 = 0x00010000
                        While (Local0)
                        {
                            Local1 = EC6C /* \_SB_.PCI0.LPC0.EC0_.EC6C */
                            If (((Local1 & 0x01) == 0x01))
                            {
                                Local2 = EC68 /* \_SB_.PCI0.LPC0.EC0_.EC68 */
                            }
                            Else
                            {
                                Return (0x00)
                            }

                            Stall (0x0A)
                            Local0--
                        }

                        Return (0x01)
                    }

                    Method (LCMD, 2, Serialized)
                    {
                        Name (LBUF, Buffer (0x1E)
                        {
                             0x00                                             // .
                        })
                        If ((WIBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        If ((WOBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        EC6C = Arg0
                        If ((WIBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        If (((Arg1 != 0x00) && (Arg1 != 0xFF)))
                        {
                            EC68 = Arg1
                            If ((WIBE () == 0x01))
                            {
                                Return (0x01)
                            }
                        }

                        If ((WOBF () == 0x01))
                        {
                            Return (0x01)
                        }

                        Local0 = EC68 /* \_SB_.PCI0.LPC0.EC0_.EC68 */
                        Local1 = 0x00
                        While (Local0)
                        {
                            If ((WOBF () == 0x01))
                            {
                                Return (0x01)
                            }

                            LBUF [Local1] = EC68 /* \_SB_.PCI0.LPC0.EC0_.EC68 */
                            Local1++
                            Local0--
                        }

                        Return (LBUF) /* \_SB_.PCI0.LPC0.EC0_.LCMD.LBUF */
                    }

                    Method (LRAM, 2, Serialized)
                    {
                        If ((WIBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        If ((WOBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        EC6C = 0x7E
                        If ((WIBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        EC68 = Arg0
                        If ((WIBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        EC68 = Arg1
                        If ((WIBE () == 0x01))
                        {
                            Return (0x01)
                        }

                        If ((WOBF () == 0x01))
                        {
                            Return (0x01)
                        }

                        Return (EC68) /* \_SB_.PCI0.LPC0.EC0_.EC68 */
                    }

                    Method (CMFC, 0, NotSerialized)
                    {
                        Return (EDID) /* External reference */
                    }

                    Method (GCBL, 1, Serialized)
                    {
                        Local0 = 0x00
                        Local1 = ^^^VGA.LCD.BRTL /* \_SB_.PCI0.VGA_.LCD_.BRTL */
                        Local1 &= 0xFF
                        Switch (ToInteger (Local1))
                        {
                            Case (0x01)
                            {
                                Local0 = 0x00
                                Break
                            }
                            Case (0x0B)
                            {
                                Local0 = 0x01
                                Break
                            }
                            Case (0x16)
                            {
                                Local0 = 0x02
                                Break
                            }
                            Case (0x1E)
                            {
                                Local0 = 0x03
                                Break
                            }
                            Case (0x28)
                            {
                                Local0 = 0x04
                                Break
                            }
                            Case (0x32)
                            {
                                Local0 = 0x05
                                Break
                            }
                            Case (0x3C)
                            {
                                Local0 = 0x06
                                Break
                            }
                            Case (0x46)
                            {
                                Local0 = 0x07
                                Break
                            }
                            Case (0x50)
                            {
                                Local0 = 0x08
                                Break
                            }
                            Case (0x5A)
                            {
                                Local0 = 0x09
                                Break
                            }
                            Case (0x63)
                            {
                                Local0 = 0x0A
                                Break
                            }

                        }

                        If ((Arg0 == 0x00))
                        {
                            If ((Local0 > 0x01))
                            {
                                Local0 -= 0x01
                                LCBV = Local0
                            }
                            Else
                            {
                                LCBV = 0x00
                            }
                        }
                        ElseIf ((Local0 < 0x0A))
                        {
                            Local0 += 0x01
                            LCBV = Local0
                        }
                        Else
                        {
                            LCBV = 0x0A
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x11
                        If ((TPOS == 0x50))
                        {
                            If ((LCBV == 0x00))
                            {
                                BKLT = 0x01
                                Return (Zero)
                            }
                        }
                        ElseIf ((^^^VGA.BRIL == 0x0C))
                        {
                            BKLT = 0x01
                            Return (Zero)
                        }

                        Notify (^^^VGA.LCD, 0x87) // Device-Specific
                        GCBL (0x00)
                        Notify (VPC0, 0x80) // Status Change
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x12
                        If ((BKLT == 0x01))
                        {
                            BKLT = 0x00
                            Return (Zero)
                        }

                        Notify (^^^VGA.LCD, 0x86) // Device-Specific
                        GCBL (0x01)
                        Notify (VPC0, 0x80) // Status Change
                    }

                    Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (LID, 0x80) // Status Change
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (LID, 0x80) // Status Change
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x1C
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x25
                        Notify (ACAD, 0x80) // Status Change
                        Notify (BATT, 0x80) // Status Change
                        Notify (BATT, 0x81) // Information Change
                    }

                    Method (_Q37, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x012C)
                        P80H = 0x37
                        Notify (ACAD, 0x80) // Status Change
                        Notify (BATT, 0x80) // Status Change
                    }

                    Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x012C)
                        P80H = 0x38
                        Notify (ACAD, 0x80) // Status Change
                        Notify (BATT, 0x80) // Status Change
                    }

                    Method (_Q32, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x32
                        Notify (PWRB, 0x80) // Status Change
                    }

                    Method (_Q42, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((TPOS == 0x50))
                        {
                            P80H = 0x42
                            If ((WLAN && WEXT))
                            {
                                M010 (0x5C, 0x01)
                                WLNS = 0x00
                            }
                            Else
                            {
                                M010 (0x5C, 0x00)
                                WLNS = 0x01
                            }

                            If ((BLUE && BEXT))
                            {
                                M010 (0x83, 0x01)
                                BTNS = 0x00
                            }
                            Else
                            {
                                M010 (0x83, 0x00)
                                BTNS = 0x01
                            }
                        }
                    }

                    Method (_Q44, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        P80H = 0x44
                        Notify (VPC0, 0x80) // Status Change
                    }

                    OperationRegion (CMS2, SystemIO, 0x72, 0x02)
                    Field (CMS2, ByteAcc, NoLock, Preserve)
                    {
                        INDX,   8, 
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xE0), 
                        WLST,   8, 
                        WLNS,   8, 
                        BTNS,   8
                    }

                    Scope (\_SB.PCI0.LPC0.EC0)
                    {
                        Device (VPC0)
                        {
                            Name (_HID, "VPC2004")  // _HID: Hardware ID
                            Name (_UID, 0x00)  // _UID: Unique ID
                            Name (_VPC, 0xFC7DF200)
                            Name (VPCD, 0x00)
                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_CFG, 0, NotSerialized)
                            {
                                If ((TPOS == 0x50))
                                {
                                    Local0 = _VPC /* \_SB_.PCI0.LPC0.EC0_.VPC0._VPC */
                                    If ((WLST == 0xAA))
                                    {
                                        Local0 |= 0x00050000
                                        WEXT = 0x01
                                        BEXT = 0x01
                                    }
                                    Else
                                    {
                                        Local0 &= 0xFFFAFFFF
                                        WEXT = 0x00
                                        BEXT = 0x00
                                    }

                                    BEXT = 0x01
                                    If ((WLNS == 0x00))
                                    {
                                        WLAN = 0x01
                                        M010 (0x5C, 0x01)
                                    }
                                    Else
                                    {
                                        WLAN = 0x00
                                        M010 (0x5C, 0x00)
                                    }

                                    If ((BTNS == 0x00))
                                    {
                                        BLUE = 0x01
                                        M010 (0x83, 0x01)
                                    }
                                    Else
                                    {
                                        BLUE = 0x00
                                        M010 (0x83, 0x00)
                                    }

                                    _VPC = Local0
                                }

                                Return (_VPC) /* \_SB_.PCI0.LPC0.EC0_.VPC0._VPC */
                            }

                            Method (VPCR, 1, Serialized)
                            {
                                If ((Arg0 == 0x01))
                                {
                                    VPCD = VCMD /* \_SB_.PCI0.LPC0.EC0_.VCMD */
                                }
                                Else
                                {
                                    VPCD = VDAT /* \_SB_.PCI0.LPC0.EC0_.VDAT */
                                }

                                Return (VPCD) /* \_SB_.PCI0.LPC0.EC0_.VPC0.VPCD */
                            }

                            Method (VPCW, 2, Serialized)
                            {
                                If ((Arg0 == 0x01))
                                {
                                    VCMD = Arg1
                                }
                                Else
                                {
                                    VDAT = Arg1
                                }

                                Return (0x00)
                            }

                            Method (SVCR, 1, Serialized)
                            {
                            }

                            Method (HALS, 0, NotSerialized)
                            {
                                Local0 = Zero
                                If ((One == KBLO))
                                {
                                    Local0 |= 0x20
                                }

                                Local0 |= 0x0200
                                If (HKDB)
                                {
                                    Local0 |= 0x0400
                                }

                                Local0 |= 0x0800
                                Return (Local0)
                            }

                            Method (SALS, 1, Serialized)
                            {
                                Local0 = ToInteger (Arg0)
                                If ((Local0 == 0x08))
                                {
                                    KBLO = 0x01
                                    Return (0x00)
                                }

                                If ((Local0 == 0x09))
                                {
                                    KBLO = 0x00
                                    Return (0x00)
                                }

                                If ((Local0 == 0x0A))
                                {
                                    UCHE = 0x01
                                    SMID = 0x32
                                    SMIC = 0xCA
                                    Return (0x00)
                                }

                                If ((Local0 == 0x0B))
                                {
                                    UCHE = 0x00
                                    SMID = 0x33
                                    SMIC = 0xCA
                                    Return (0x00)
                                }

                                If ((Local0 == 0x0E))
                                {
                                    HKDB = 0x01
                                    SMID = 0x31
                                    SMIC = 0xCA
                                    Return (0x00)
                                }

                                If ((Local0 == 0x0F))
                                {
                                    HKDB = 0x00
                                    SMID = 0x30
                                    SMIC = 0xCA
                                    Return (0x00)
                                }

                                Return (Zero)
                            }

                            Method (GBMD, 0, NotSerialized)
                            {
                                Local0 = 0x10000000
                                If ((One == CDMB))
                                {
                                    Local0 |= One
                                }

                                If ((One == BBAD))
                                {
                                    Local0 |= 0x08
                                }

                                If ((One == BTSM))
                                {
                                    Local0 |= 0x20
                                }

                                If ((One == BLEG))
                                {
                                    Local0 |= 0x80
                                }

                                If ((One == BATF))
                                {
                                    Local0 |= 0x0100
                                }

                                If ((Zero == BTSM))
                                {
                                    Local0 |= 0x0200
                                }

                                If ((One == BUSG))
                                {
                                    Local0 |= 0x0800
                                }

                                If ((0x00 == ADPI))
                                {
                                    Local0 &= 0xFFFE7FFF
                                }

                                If ((0x01 == ADPI))
                                {
                                    Local0 |= 0x8000
                                }

                                If ((0x02 == ADPI))
                                {
                                    Local0 |= 0x00010000
                                }

                                If ((One == ESMC))
                                {
                                    Local0 |= 0x00400000
                                }

                                Return (Local0)
                            }

                            Name (VBST, 0x00)
                            Name (VBAC, 0x00)
                            Name (VBPR, 0x00)
                            Name (VBRC, 0x00)
                            Name (VBPV, 0x00)
                            Name (VBFC, 0x00)
                            Name (VBCT, 0x00)
                            Method (SMTF, 1, NotSerialized)
                            {
                                If ((Arg0 == 0x00))
                                {
                                    If ((B1FV == Zero))
                                    {
                                        Return (0xFFFF)
                                    }

                                    If ((B1AC == Zero))
                                    {
                                        Return (0xFFFF)
                                    }

                                    Local0 = B1FC /* \_SB_.PCI0.LPC0.EC0_.B1FC */
                                    Local0 *= 0x0A
                                    VBFC = Local0
                                    Local1 = B1RC /* \_SB_.PCI0.LPC0.EC0_.B1RC */
                                    Local1 *= 0x0A
                                    VBRC = Local1
                                    If ((VBFC > VBRC))
                                    {
                                        VBPV = B1FV /* \_SB_.PCI0.LPC0.EC0_.B1FV */
                                        VBAC = B1AC /* \_SB_.PCI0.LPC0.EC0_.B1AC */
                                        Local0 -= Local1
                                        Local1 = (VBAC * VBPV)
                                        Local3 = (Local0 * 0x03E8)
                                        Local3 = (Local3 * 0x3C)
                                        VBCT = (Local3 / Local1)
                                        Return (VBCT) /* \_SB_.PCI0.LPC0.EC0_.VPC0.VBCT */
                                    }
                                    Else
                                    {
                                        Return (0xFFFF)
                                    }
                                }

                                If ((Arg0 == 0x01))
                                {
                                    Return (0xFFFF)
                                }

                                Return (0xFFFF)
                            }

                            Name (QBST, 0x00)
                            Name (QBAC, 0x00)
                            Name (QBPR, 0x00)
                            Name (QBRC, 0x00)
                            Name (QBPV, 0x00)
                            Name (QBFC, 0x00)
                            Name (QBCT, 0x00)
                            Method (SMTE, 1, NotSerialized)
                            {
                                If ((Arg0 == 0x00))
                                {
                                    If ((B1FV == Zero))
                                    {
                                        Return (0xFFFF)
                                    }

                                    If ((B1AC == Zero))
                                    {
                                        Return (0xFFFF)
                                    }

                                    Local0 = B1RC /* \_SB_.PCI0.LPC0.EC0_.B1RC */
                                    Local0 *= 0x0A
                                    QBRC = Local0
                                    Local1 = B1FC /* \_SB_.PCI0.LPC0.EC0_.B1FC */
                                    Local1 *= 0x0A
                                    QBFC = Local1
                                    If ((QBFC > QBRC))
                                    {
                                        QBPV = B1FV /* \_SB_.PCI0.LPC0.EC0_.B1FV */
                                        If (((B1AC & 0x8000) == Zero))
                                        {
                                            QBAC = B1AC /* \_SB_.PCI0.LPC0.EC0_.B1AC */
                                        }
                                        Else
                                        {
                                            QBAC = (0xFFFF - B1AC)
                                        }

                                        Local1 = (QBAC * QBPV)
                                        Local3 = (Local0 * 0x03E8)
                                        Local3 = (Local3 * 0x3C)
                                        QBCT = (Local3 / Local1)
                                        Return (QBCT) /* \_SB_.PCI0.LPC0.EC0_.VPC0.QBCT */
                                    }
                                    Else
                                    {
                                        Return (0xFFFF)
                                    }
                                }

                                If ((Arg0 == 0x01))
                                {
                                    Return (0xFFFF)
                                }

                                Return (0xFFFF)
                            }

                            Method (SBMC, 1, NotSerialized)
                            {
                                If ((Arg0 == Zero))
                                {
                                    CDMB = 0x00
                                    EDCC = One
                                    Return (Zero)
                                }

                                If ((Arg0 == One))
                                {
                                    CDMB = One
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x03))
                                {
                                    BTSM = One
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x05))
                                {
                                    BTSM = 0x00
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x09))
                                {
                                    ESMC = One
                                    Return (Zero)
                                }

                                If ((Arg0 == 0x10))
                                {
                                    ESMC = Zero
                                    Return (Zero)
                                }

                                Return (Zero)
                            }

                            Method (MHCF, 1, NotSerialized)
                            {
                                P80H = 0x78
                                Local0 = Arg0
                                Local0 &= 0x20
                                Local0 >>= 0x05
                                RMBT = Local0
                                Sleep (0x14)
                                Return (Local0)
                            }

                            Method (MHPF, 1, NotSerialized)
                            {
                                Name (BFWB, Buffer (0x25){})
                                CreateByteField (BFWB, Zero, FB0)
                                CreateByteField (BFWB, One, FB1)
                                CreateByteField (BFWB, 0x02, FB2)
                                CreateByteField (BFWB, 0x03, FB3)
                                CreateField (BFWB, 0x20, 0x0100, FB4)
                                CreateByteField (BFWB, 0x24, FB5)
                                If ((SizeOf (Arg0) <= 0x25))
                                {
                                    If ((SMPR != Zero))
                                    {
                                        FB1 = SMST /* \_SB_.PCI0.LPC0.EC0_.SMST */
                                    }
                                    Else
                                    {
                                        BFWB = Arg0
                                        SMAD = FB2 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB2_ */
                                        SMCM = FB3 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB3_ */
                                        BCNT = FB5 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB5_ */
                                        Local0 = FB0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB0_ */
                                        If (((Local0 & One) == Zero))
                                        {
                                            SMDA = FB4 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB4_ */
                                        }

                                        SMST = 0x00
                                        SMPR = FB0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB0_ */
                                        Local1 = 0x03E8
                                        While (Local1)
                                        {
                                            Sleep (One)
                                            Local1--
                                            If (((SMST && 0x80) || (SMPR == 0x00)))
                                            {
                                                Break
                                            }
                                        }

                                        Local0 = FB0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.FB0_ */
                                        If (((Local0 & One) != Zero))
                                        {
                                            FB4 = SMDA /* \_SB_.PCI0.LPC0.EC0_.SMDA */
                                        }

                                        FB1 = SMST /* \_SB_.PCI0.LPC0.EC0_.SMST */
                                        If (((Local1 == 0x00) || !(SMST && 0x80)))
                                        {
                                            SMPR = 0x00
                                            FB1 = 0x92
                                        }
                                    }

                                    Return (BFWB) /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHPF.BFWB */
                                }
                            }

                            Method (MHIF, 1, NotSerialized)
                            {
                                P80H = 0x50
                                If ((Arg0 == 0x00))
                                {
                                    Name (RETB, Buffer (0x0A){})
                                    Name (BUF1, Buffer (0x08){})
                                    BUF1 = FWBT /* \_SB_.PCI0.LPC0.EC0_.FWBT */
                                    CreateByteField (BUF1, 0x00, FW0)
                                    CreateByteField (BUF1, 0x01, FW1)
                                    CreateByteField (BUF1, 0x02, FW2)
                                    CreateByteField (BUF1, 0x03, FW3)
                                    CreateByteField (BUF1, 0x04, FW4)
                                    CreateByteField (BUF1, 0x05, FW5)
                                    CreateByteField (BUF1, 0x06, FW6)
                                    CreateByteField (BUF1, 0x07, FW7)
                                    RETB [Zero] = FUSL /* \_SB_.PCI0.LPC0.EC0_.FUSL */
                                    RETB [One] = FUSH /* \_SB_.PCI0.LPC0.EC0_.FUSH */
                                    RETB [0x02] = FW0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW0_ */
                                    RETB [0x03] = FW1 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW1_ */
                                    RETB [0x04] = FW2 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW2_ */
                                    RETB [0x05] = FW3 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW3_ */
                                    RETB [0x06] = FW4 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW4_ */
                                    RETB [0x07] = FW5 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW5_ */
                                    RETB [0x08] = FW6 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW6_ */
                                    RETB [0x09] = FW7 /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.FW7_ */
                                    Return (RETB) /* \_SB_.PCI0.LPC0.EC0_.VPC0.MHIF.RETB */
                                }
                            }

                            Method (GSBI, 1, NotSerialized)
                            {
                                Name (BIFB, Buffer (0x53)
                                {
                                    /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0018 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0028 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0030 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0038 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0040 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0048 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                                    /* 0050 */  0xFF, 0xFF, 0xFF                                 // ...
                                })
                                CreateWordField (BIFB, 0x00, DCAP)
                                CreateWordField (BIFB, 0x02, FCAP)
                                CreateWordField (BIFB, 0x04, RCAP)
                                CreateWordField (BIFB, 0x06, ATTE)
                                CreateWordField (BIFB, 0x08, ATTF)
                                CreateWordField (BIFB, 0x0A, BTVT)
                                CreateWordField (BIFB, 0x0C, BTCT)
                                CreateWordField (BIFB, 0x0E, BTMP)
                                CreateWordField (BIFB, 0x10, MDAT)
                                CreateWordField (BIFB, 0x12, FUDT)
                                CreateWordField (BIFB, 0x14, DVLT)
                                CreateField (BIFB, 0xB0, 0x50, DCHE)
                                CreateField (BIFB, 0x0100, 0x40, DNAM)
                                CreateField (BIFB, 0x0140, 0x60, MNAM)
                                CreateField (BIFB, 0x01A0, 0xB8, BRNB)
                                CreateQWordField (BIFB, 0x4B, BFW0)
                                If (((Arg0 == 0x00) || (Arg0 == 0x01)))
                                {
                                    Local0 = B1DC /* \_SB_.PCI0.LPC0.EC0_.B1DC */
                                    Local0 *= 0x0A
                                    DCAP = Local0
                                    Local0 = B1FC /* \_SB_.PCI0.LPC0.EC0_.B1FC */
                                    Local0 *= 0x0A
                                    FCAP = Local0
                                    Local0 = B1RC /* \_SB_.PCI0.LPC0.EC0_.B1RC */
                                    Local0 *= 0x0A
                                    RCAP = Local0
                                    ATTE = SMTE (0x00)
                                    ATTF = SMTF (0x00)
                                    BTVT = B1FV /* \_SB_.PCI0.LPC0.EC0_.B1FV */
                                    BTCT = B1AC /* \_SB_.PCI0.LPC0.EC0_.B1AC */
                                    Local0 = B1AT /* \_SB_.PCI0.LPC0.EC0_.B1AT */
                                    Local0 += 0x0111
                                    Local0 *= 0x0A
                                    BTMP = Local0
                                    MDAT = B1DA /* \_SB_.PCI0.LPC0.EC0_.B1DA */
                                    If ((BFUD != 0x00))
                                    {
                                        FUDT = BFUD /* \_SB_.PCI0.LPC0.EC0_.BFUD */
                                    }

                                    DVLT = B1DV /* \_SB_.PCI0.LPC0.EC0_.B1DV */
                                    Name (DCH0, Buffer (0x0A)
                                    {
                                         0x00                                             // .
                                    })
                                    Name (DCH1, "LION")
                                    Name (DCH2, "LiP")
                                    If ((B1TY == 0x01))
                                    {
                                        DCH0 = DCH1 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.DCH1 */
                                        DCHE = DCH0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.DCH0 */
                                    }
                                    Else
                                    {
                                        DCH0 = DCH2 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.DCH2 */
                                        DCHE = DCH0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.DCH0 */
                                    }

                                    Name (BDNT, Buffer (0x08)
                                    {
                                         0x00                                             // .
                                    })
                                    BDNT = BDN0 /* \_SB_.PCI0.LPC0.EC0_.BDN0 */
                                    DNAM = BDNT /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.BDNT */
                                    Name (BMNT, Buffer (0x0C)
                                    {
                                         0x00                                             // .
                                    })
                                    BMNT = BMN0 /* \_SB_.PCI0.LPC0.EC0_.BMN0 */
                                    MNAM = BMNT /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.BMNT */
                                    Name (BRN0, Buffer (0x17)
                                    {
                                         0x00                                             // .
                                    })
                                    Local1 = 0x17
                                    Local2 = 0x2E
                                    While (Local1)
                                    {
                                        BRN0 [(0x17 - Local1)] = LRAM (0x02, Local2)
                                        Local2++
                                        Local1--
                                    }

                                    BRNB = BRN0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.BRN0 */
                                    BFW0 = FWBT /* \_SB_.PCI0.LPC0.EC0_.FWBT */
                                    Return (BIFB) /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.BIFB */
                                }

                                If ((Arg0 == 0x02))
                                {
                                    Return (BIFB) /* \_SB_.PCI0.LPC0.EC0_.VPC0.GSBI.BIFB */
                                }

                                Return (Zero)
                            }

                            Method (HODD, 0, NotSerialized)
                            {
                            }

                            Method (SODD, 1, Serialized)
                            {
                            }

                            Method (GBID, 0, Serialized)
                            {
                                Name (GBUF, Package (0x04)
                                {
                                    Buffer (0x02)
                                    {
                                         0x00, 0x00                                       // ..
                                    }, 

                                    Buffer (0x02)
                                    {
                                         0x00, 0x00                                       // ..
                                    }, 

                                    Buffer (0x08)
                                    {
                                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                    }, 

                                    Buffer (0x08)
                                    {
                                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                    }
                                })
                                DerefOf (GBUF [Zero]) [Zero] = B1CT /* \_SB_.PCI0.LPC0.EC0_.B1CT */
                                DerefOf (GBUF [0x01]) [Zero] = 0x00
                                Name (BUF1, Buffer (0x08){})
                                BUF1 = FWBT /* \_SB_.PCI0.LPC0.EC0_.FWBT */
                                CreateByteField (BUF1, 0x00, FW0)
                                CreateByteField (BUF1, 0x01, FW1)
                                CreateByteField (BUF1, 0x02, FW2)
                                CreateByteField (BUF1, 0x03, FW3)
                                CreateByteField (BUF1, 0x04, FW4)
                                CreateByteField (BUF1, 0x05, FW5)
                                CreateByteField (BUF1, 0x06, FW6)
                                CreateByteField (BUF1, 0x07, FW7)
                                DerefOf (GBUF [0x02]) [Zero] = FW0 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW0_ */
                                DerefOf (GBUF [0x02]) [0x01] = FW1 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW1_ */
                                DerefOf (GBUF [0x02]) [0x02] = FW2 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW2_ */
                                DerefOf (GBUF [0x02]) [0x03] = FW3 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW3_ */
                                DerefOf (GBUF [0x02]) [0x04] = FW4 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW4_ */
                                DerefOf (GBUF [0x02]) [0x05] = FW5 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW5_ */
                                DerefOf (GBUF [0x02]) [0x06] = FW6 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW6_ */
                                DerefOf (GBUF [0x02]) [0x07] = FW7 /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.FW7_ */
                                DerefOf (GBUF [0x03]) [Zero] = 0x00
                                Return (GBUF) /* \_SB_.PCI0.LPC0.EC0_.VPC0.GBID.GBUF */
                            }

                            Name (APDT, 0x00)
                            Method (APPC, 1, Serialized)
                            {
                                APDT = Arg0
                                Return (0x00)
                            }

                            Method (DBSL, 0, NotSerialized)
                            {
                                Return (Package (0x10)
                                {
                                    0xC9, 
                                    0xAE, 
                                    0x95, 
                                    0x7E, 
                                    0x69, 
                                    0x56, 
                                    0x45, 
                                    0x36, 
                                    0x29, 
                                    0x1E, 
                                    0x15, 
                                    0x0E, 
                                    0x09, 
                                    0x06, 
                                    0x05, 
                                    0x00
                                })
                            }

                            Method (SBSL, 1, Serialized)
                            {
                                Local0 = Arg0
                                If ((Local0 == One))
                                {
                                    LCBV = 0x0E
                                }

                                If ((Local0 == 0x02))
                                {
                                    LCBV = 0x07
                                }

                                Return (0x00)
                            }

                            Method (STHT, 1, Serialized)
                            {
                                Return (0x00)
                            }
                        }
                    }
                }

                Device (ALSD)
                {
                    Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((LITS != 0x80000000) & (TPOS >= 0x50)))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_ALI, 0, NotSerialized)  // _ALI: Ambient Light Illuminance
                    {
                        Return (0x00)
                    }

                    Name (_ALR, Package (0x05)  // _ALR: Ambient Light Response
                    {
                        Package (0x02)
                        {
                            0x46, 
                            0x00
                        }, 

                        Package (0x02)
                        {
                            0x49, 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            0x55, 
                            0x50
                        }, 

                        Package (0x02)
                        {
                            0x64, 
                            0x012C
                        }, 

                        Package (0x02)
                        {
                            0x96, 
                            0x03E8
                        }
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (CRS, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y1E)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((^^^SMB.HPAD & 0x40) == 0x40))
                        {
                            If ((OSTB >= 0x40))
                            {
                                Return (0x0F)
                            }

                            ^^^SMB.HPAD = (^^^SMB.HPAD & 0xFFFFFFBF)
                            Return (One)
                        }

                        Return (One)
                    }

                    Mutex (HPSM, 0x00)
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.LPC0.HPET._Y1E._BAS, MMT)  // _BAS: Base Address
                        Local0 = ^^^SMB.HPAD /* \_SB_.PCI0.SMB_.HPAD */
                        MMT = (Local0 & 0xFFFFFC00)
                        Return (MMT) /* \_SB_.PCI0.LPC0.HPET._CRS.MMT_ */
                    }
                }
            }

            Device (VGA)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (PXEN, 0x80000000)
                Name (PXID, 0x00020000)
                Name (PXMX, 0x80000000)
                Name (LCDT, 0x80000000)
                Name (DSCT, 0x80000000)
                Name (PXFX, 0x80000000)
                Name (PXDY, 0x80000000)
                Name (AF7E, 0x80000001)
                Name (BLVL, Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x20, 0x30, 0x40, 0x50, 0x58, 0x60, 0x70,  // . 0@PX`p
                    /* 0008 */  0x80, 0x90, 0xA0, 0xB0, 0xC0, 0xD0, 0xE0, 0xFF   // ........
                })
                Name (DOSP, 0x00)
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    DOSP = Arg0
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    Return (Package (0x05)
                    {
                        0x00010100, 
                        0x00010110, 
                        0x0200, 
                        0x00010210, 
                        0x00010220
                    })
                }

                OperationRegion (GPUM, PCI_Config, 0x24, 0x04)
                Field (GPUM, ByteAcc, NoLock, Preserve)
                {
                    GPUB,   32
                }

                Method (GBSA, 0, Serialized)
                {
                    Local0 = GPUB /* \_SB_.PCI0.VGA_.GPUB */
                    Local0 &= 0xFFFFFF00
                    Local0 += 0x172C
                    Return (Local0)
                }

                OperationRegion (SCRA, SystemMemory, GBSA (), 0x04)
                Field (SCRA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    BRIL,   8
                }

                Device (LCD)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (0x0110)
                    }

                    Name (BRTL, 0x00)
                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        If ((AF7E == 0x80000001))
                        {
                            If ((TPOS == 0x80))
                            {
                                Return (Package (0x0D)
                                {
                                    0x64, 
                                    0x43, 
                                    0x01, 
                                    0x0B, 
                                    0x16, 
                                    0x1E, 
                                    0x28, 
                                    0x32, 
                                    0x3C, 
                                    0x46, 
                                    0x50, 
                                    0x5A, 
                                    0x63
                                })
                            }
                            ElseIf ((TPOS == 0x50))
                            {
                                Return (Package (0x0D)
                                {
                                    0x50, 
                                    0x28, 
                                    0x01, 
                                    0x0B, 
                                    0x16, 
                                    0x1E, 
                                    0x28, 
                                    0x32, 
                                    0x3C, 
                                    0x46, 
                                    0x50, 
                                    0x5A, 
                                    0x63
                                })
                            }
                            Else
                            {
                                Return (Package (0x11)
                                {
                                    0x52, 
                                    0x22, 
                                    0x02, 
                                    0x08, 
                                    0x0E, 
                                    0x16, 
                                    0x1C, 
                                    0x22, 
                                    0x2A, 
                                    0x30, 
                                    0x36, 
                                    0x3E, 
                                    0x44, 
                                    0x4B, 
                                    0x52, 
                                    0x58, 
                                    0x63
                                })
                            }
                        }
                        Else
                        {
                            Return (Package (0x35)
                            {
                                0x5A, 
                                0x3C, 
                                0x00, 
                                0x02, 
                                0x04, 
                                0x06, 
                                0x08, 
                                0x0A, 
                                0x0C, 
                                0x0E, 
                                0x10, 
                                0x12, 
                                0x14, 
                                0x16, 
                                0x18, 
                                0x1A, 
                                0x1C, 
                                0x1E, 
                                0x20, 
                                0x22, 
                                0x24, 
                                0x26, 
                                0x28, 
                                0x2A, 
                                0x2C, 
                                0x2E, 
                                0x30, 
                                0x32, 
                                0x34, 
                                0x36, 
                                0x38, 
                                0x3A, 
                                0x3C, 
                                0x3E, 
                                0x40, 
                                0x42, 
                                0x44, 
                                0x46, 
                                0x48, 
                                0x4A, 
                                0x4C, 
                                0x4E, 
                                0x50, 
                                0x52, 
                                0x54, 
                                0x56, 
                                0x58, 
                                0x5A, 
                                0x5C, 
                                0x5E, 
                                0x60, 
                                0x62, 
                                0x63
                            })
                        }
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        BRTL = Arg0
                        If ((AF7E == 0x80000001))
                        {
                            Divide (((Arg0 * 0x03) + 0x13), 0x14, Local1, Local0)
                            Local3 = DerefOf (BLVL [Local0])
                            AFN7 (Local3)
                        }
                        Else
                        {
                            Acquire (^^^LPC0.PSMX, 0xFFFF)
                            ^^^LPC0.INF0 = 0x01
                            ^^^LPC0.INF1 = Arg0
                            ^^^LPC0.PHS1 (0x8A)
                            Release (^^^LPC0.PSMX)
                        }
                    }
                }
            }
        }

        Device (ACAD)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (XX00, Buffer (0x03){})
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                Local0 = 0x00
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    Acquire (^^PCI0.LPC0.EC0.ECMT, 0xFFFF)
                    Local0 = ^^PCI0.LPC0.EC0.ADPT /* \_SB_.PCI0.LPC0.EC0_.ADPT */
                    Release (^^PCI0.LPC0.EC0.ECMT)
                }

                CreateWordField (XX00, 0x00, SSZE)
                CreateByteField (XX00, 0x02, ACST)
                SSZE = 0x03
                If (Local0)
                {
                    Local2 = 0x01
                    ACST = 0x00
                }
                Else
                {
                    Local2 = 0x02
                    ACST = 0x01
                }

                ^^PCI0.VGA.AFN4 (Local2, ALIB (0x01, XX00), Return (Local0))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (BATT)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (PBIF, Package (0x0D)
            {
                0x00, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0x01, 
                0xFFFFFFFF, 
                0x00, 
                0x00, 
                0x64, 
                0x00, 
                "LCFC", 
                "BAT20101001", 
                "Li Polymer", 
                "LENOVO"
            })
            Name (PBST, Package (0x04)
            {
                0x01, 
                0x0A90, 
                0x1000, 
                0x2A30
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    Acquire (^^PCI0.LPC0.EC0.ECMT, 0xFFFF)
                    Local0 = ^^PCI0.LPC0.EC0.BA1P /* \_SB_.PCI0.LPC0.EC0_.BA1P */
                    Release (^^PCI0.LPC0.EC0.ECMT)
                    If ((Local0 & 0x01))
                    {
                        Return (0x1F)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }
                Else
                {
                    Return (0x1F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    Acquire (^^PCI0.LPC0.EC0.ECMT, 0xFFFF)
                    Local0 = ^^PCI0.LPC0.EC0.B1DC /* \_SB_.PCI0.LPC0.EC0_.B1DC */
                    Local0 *= 0x0A
                    PBIF [0x01] = Local0
                    Local0 = ^^PCI0.LPC0.EC0.B1FC /* \_SB_.PCI0.LPC0.EC0_.B1FC */
                    Local0 *= 0x0A
                    PBIF [0x02] = Local0
                    PBIF [0x04] = ^^PCI0.LPC0.EC0.B1DV /* \_SB_.PCI0.LPC0.EC0_.B1DV */
                    Release (^^PCI0.LPC0.EC0.ECMT)
                }

                Return (PBIF) /* \_SB_.BATT.PBIF */
            }

            Name (OBST, 0x00)
            Name (OBAC, 0x00)
            Name (OBPR, 0x00)
            Name (OBRC, 0x00)
            Name (OBPV, 0x00)
            Method (_BST, 0, Serialized)  // _BST: Battery Status
            {
                If (^^PCI0.LPC0.EC0.ECOK)
                {
                    Acquire (^^PCI0.LPC0.EC0.ECMT, 0xFFFF)
                    Sleep (0x10)
                    Local0 = ^^PCI0.LPC0.EC0.B1ST /* \_SB_.PCI0.LPC0.EC0_.B1ST */
                    Local1 = DerefOf (PBST [0x00])
                    Switch ((Local0 & 0x07))
                    {
                        Case (0x00)
                        {
                            OBST = (Local1 & 0xF8)
                        }
                        Case (0x01)
                        {
                            OBST = (0x01 | (Local1 & 0xF8))
                        }
                        Case (0x02)
                        {
                            OBST = (0x02 | (Local1 & 0xF8))
                        }
                        Case (0x04)
                        {
                            OBST = (0x04 | (Local1 & 0xF8))
                        }

                    }

                    Sleep (0x10)
                    OBAC = ^^PCI0.LPC0.EC0.B1AC /* \_SB_.PCI0.LPC0.EC0_.B1AC */
                    If ((OBST & 0x01))
                    {
                        If ((OBAC != Zero))
                        {
                            OBAC = (~OBAC & 0x7FFF)
                        }
                    }

                    Sleep (0x10)
                    OBRC = ^^PCI0.LPC0.EC0.B1RC /* \_SB_.PCI0.LPC0.EC0_.B1RC */
                    Sleep (0x10)
                    OBPV = ^^PCI0.LPC0.EC0.B1FV /* \_SB_.PCI0.LPC0.EC0_.B1FV */
                    OBRC *= 0x0A
                    OBPR = ((OBAC * OBPV) / 0x03E8)
                    PBST [0x00] = OBST /* \_SB_.BATT.OBST */
                    PBST [0x01] = OBPR /* \_SB_.BATT.OBPR */
                    PBST [0x02] = OBRC /* \_SB_.BATT.OBRC */
                    PBST [0x03] = OBPV /* \_SB_.BATT.OBPV */
                    Release (^^PCI0.LPC0.EC0.ECMT)
                }

                Return (PBST) /* \_SB_.BATT.PBST */
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (^^PCI0.LPC0.EC0.LSTE) /* \_SB_.PCI0.LPC0.EC0_.LSTE */
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x16, 
                0x04
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
            }
        }

        Mutex (LDMX, 0x00)
        Method (LDFN, 0, NotSerialized)
        {
            P80H = 0xC000
            Acquire (LDMX, 0xFFFF)
             = One = (M029 & 0x16)
            Local0
            Sleep (0x14)
            If (Local0)
            {
                ^PCI0.SMB.E22C = Zero
                P80H = 0xC001
            }
            Else
            {
                ^PCI0.SMB.E22C = One
                P80H = 0xC002
            }

            Notify (LID, 0x80) // Status Change
            Release (LDMX)
        }

        Scope (\_GPE)
        {
            Method (_L16, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
            {
                \_SB.LDFN ()
            }
        }
    }

    Scope (\)
    {
        Name (HPDT, Package (0x09)
        {
            "LEGACYHP", 
            0x80000000, 
            0x80000000, 
            "NATIVEHP", 
            0x80000000, 
            0x80000000, 
            "THERMALX", 
            0x80000000, 
            0x80000000
        })
        Name (DDB0, 0x00)
        Name (DDB1, 0x00)
        Name (DDB2, 0x00)
    }

    Scope (_GPE)
    {
        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP2, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
            Notify (\_SB.PCI0.GFX, 0x02) // Device Wake
        }

        Method (_L18, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
            Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
            Notify (\_SB.PCI0.EHC3, 0x02) // Device Wake
            Notify (\_SB.PCI0.XHC0, 0x02) // Device Wake
        }

        Method (_L0A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            P80H = 0xD000
             = 0x0A = ~M029 /* External reference */
            \_SB.PCI0.SMB.E10C
            If ((\_SB.PCI0.SMB.E10C == Zero))
            {
                P80H = 0xD001
            }
            Else
            {
                P80H = 0xD002
            }
        }
    }

    Scope (_SB.PCI0.SMB)
    {
        Mutex (SBX0, 0x00)
        OperationRegion (SMB0, SystemIO, 0x0B00, 0x10)
        Field (SMB0, ByteAcc, NoLock, Preserve)
        {
            HST0,   8, 
            SLV0,   8, 
            CNT0,   8, 
            CMD0,   8, 
            ADD0,   8, 
            DT00,   8, 
            DT10,   8, 
            BLK0,   8
        }

        Method (WBD0, 1, NotSerialized)
        {
            Local0 = Arg0
            Local2 = 0x00
            Local3 = HST0 /* \_SB_.PCI0.SMB_.HST0 */
            Local1 = (Local3 & 0x80)
            While ((Local1 != 0x80))
            {
                If ((Local0 < 0x0A))
                {
                    Local2 = 0x18
                    Local1 = 0x00
                }
                Else
                {
                    Sleep (0x0A)
                    Local0 -= 0x0A
                    Local3 = HST0 /* \_SB_.PCI0.SMB_.HST0 */
                    Local1 = (Local3 & 0x80)
                }
            }

            If ((Local2 != 0x18))
            {
                Local1 = (HST0 & 0x1C)
                If (Local1)
                {
                    Local2 = 0x07
                }
            }

            Return (Local2)
        }

        Method (WTC0, 1, NotSerialized)
        {
            Local0 = Arg0
            Local2 = 0x07
            Local1 = 0x01
            While ((Local1 == 0x01))
            {
                Local3 = (HST0 & 0x1D)
                If ((Local3 != 0x00))
                {
                    If ((Local3 == 0x01))
                    {
                        If ((Local0 < 0x0A))
                        {
                            Local2 = 0x18
                            Local1 = 0x00
                        }
                        Else
                        {
                            Sleep (0x0A)
                            Local0 -= 0x0A
                        }
                    }
                    Else
                    {
                        Local2 = 0x07
                        Local1 = 0x00
                    }
                }
                Else
                {
                    Local2 = 0x00
                    Local1 = 0x00
                }
            }

            HST0 = (HST0 | 0x1F)
            Return (Local2)
        }

        Method (SBR0, 3, NotSerialized)
        {
            Local0 = Package (0x22)
                {
                    0x07, 
                    0x00, 
                    0x00
                }
            Local4 = (Arg0 & 0x5F)
            If ((Local4 != 0x03))
            {
                If ((Local4 != 0x05))
                {
                    If ((Local4 != 0x07))
                    {
                        If ((Local4 != 0x09))
                        {
                            If ((Local4 != 0x0B))
                            {
                                Local0 [0x00] = 0x19
                                Return (Local0)
                            }
                        }
                    }
                }
            }

            If ((Acquire (SBX0, 0xFFFF) == 0x00))
            {
                ADD0 = ((Arg1 << 0x01) | 0x01)
                CMD0 = Arg2
                HST0 = (HST0 | 0x1F)
                Local1 = (Arg0 & 0xA0)
                CNT0 = ((CNT0 & 0x5F) | Local1)
                If ((Local4 == 0x03))
                {
                    CNT0 = ((CNT0 & 0xA0) | 0x40)
                }

                If ((Local4 == 0x05))
                {
                    CNT0 = ((CNT0 & 0xA0) | 0x44)
                }

                If ((Local4 == 0x07))
                {
                    CNT0 = ((CNT0 & 0xA0) | 0x48)
                }

                If ((Local4 == 0x09))
                {
                    CNT0 = ((CNT0 & 0xA0) | 0x4C)
                }

                If ((Local4 == 0x0B))
                {
                    HST0 = (HST0 | 0x80)
                    DT00 = 0x00
                    CNT0 = ((CNT0 & 0xA0) | 0x54)
                }

                Local1 = WTC0 (0x03E8)
                Local0 [0x00] = Local1
                If ((Local1 == 0x00))
                {
                    If ((Local4 == 0x05))
                    {
                        Local0 [0x01] = 0x01
                        Local0 [0x02] = DT00 /* \_SB_.PCI0.SMB_.DT00 */
                    }

                    If ((Local4 == 0x07))
                    {
                        Local0 [0x01] = 0x01
                        Local0 [0x02] = DT00 /* \_SB_.PCI0.SMB_.DT00 */
                    }

                    If ((Local4 == 0x09))
                    {
                        Local0 [0x01] = 0x02
                        Local2 = DT10 /* \_SB_.PCI0.SMB_.DT10 */
                        Local2 <<= 0x08
                        Local2 += DT00 /* \_SB_.PCI0.SMB_.DT00 */
                        Local0 [0x02] = Local2
                    }

                    If ((Local4 == 0x0B))
                    {
                        Local1 = WBD0 (0x01F4)
                        If ((Local1 != 0x00))
                        {
                            Local0 [0x00] = Local1
                        }
                        Else
                        {
                            Local0 [0x01] = DT00 /* \_SB_.PCI0.SMB_.DT00 */
                            Local1 = DT00 /* \_SB_.PCI0.SMB_.DT00 */
                            Local2 = CNT0 /* \_SB_.PCI0.SMB_.CNT0 */
                            Local2 = 0x00
                            While ((Local2 < Local1))
                            {
                                Local3 = (0x02 + Local2)
                                Local0 [Local3] = BLK0 /* \_SB_.PCI0.SMB_.BLK0 */
                                Local2 += 0x01
                            }

                            HST0 = (HST0 | 0x80)
                        }
                    }
                }

                CNT0 = (CNT0 & 0x5F)
                Release (SBX0)
            }

            Return (Local0)
        }

        Method (SBW0, 5, NotSerialized)
        {
            Local0 = Package (0x01)
                {
                    0x07
                }
            Local4 = (Arg0 & 0x5F)
            If ((Local4 != 0x02))
            {
                If ((Local4 != 0x04))
                {
                    If ((Local4 != 0x06))
                    {
                        If ((Local4 != 0x08))
                        {
                            If ((Local4 != 0x0A))
                            {
                                Local0 [0x00] = 0x19
                                Return (Local0)
                            }
                        }
                    }
                }
            }

            If ((Acquire (SBX0, 0xFFFF) == 0x00))
            {
                ADD0 = (Arg1 << 0x01)
                CMD0 = Arg2
                HST0 = (HST0 | 0x1F)
                Local1 = (Arg0 & 0xA0)
                CNT0 = ((CNT0 & 0x5F) | Local1)
                If ((Local4 == 0x02))
                {
                    CNT0 = ((CNT0 & 0xA0) | 0x40)
                }

                If ((Local4 == 0x04))
                {
                    CNT0 = ((CNT0 & 0xA0) | 0x44)
                }

                If ((Local4 == 0x06))
                {
                    DT00 = Arg4
                    CNT0 = ((CNT0 & 0xA0) | 0x48)
                }

                If ((Local4 == 0x08))
                {
                    DT00 = (Arg4 & 0xFF)
                    DT10 = (Arg4 >> 0x08)
                    CNT0 = ((CNT0 & 0xA0) | 0x4C)
                }

                If ((Local4 == 0x0A))
                {
                    HST0 = (HST0 | 0x80)
                    Local1 = CNT0 /* \_SB_.PCI0.SMB_.CNT0 */
                    DT00 = Arg3
                    Local2 = 0x00
                    While ((Local2 < Arg3))
                    {
                        BLK0 = Arg4 [Local2]
                        Local2 += 0x01
                    }

                    CNT0 = ((CNT0 & 0xA0) | 0x54)
                }

                Local0 [0x00] = WTC0 (0x03E8)
                CNT0 = (CNT0 & 0x5F)
                Release (SBX0)
            }

            Return (Local0)
        }
    }
}

