/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLWhk7dp.aml, Tue Nov  8 16:25:55 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000009F (159)
 *     Revision         0x02
 *     Checksum         0x48
 *     OEM ID           "CORP"
 *     OEM Table ID     "AWAC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20221020 (539103264)
 */
DefinitionBlock ("", "SSDT", 2, "CORP", "AWAC", 0x00000000)
{
    External (_SB_.AWAC, DeviceObj)
    External (_SB_.AWAC.XSTA, MethodObj)    // 0 Arguments

    Scope (\_SB.AWAC)
    {
        Name (ZSTA, 0x0F)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }

            If (CondRefOf (\_SB.AWAC.XSTA))
            {
                ZSTA = \_SB.AWAC.XSTA ()
            }

            Return (ZSTA) /* \_SB_.AWAC.ZSTA */
        }
    }
}

