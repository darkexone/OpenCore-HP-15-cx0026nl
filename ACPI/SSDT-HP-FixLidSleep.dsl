/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLjhdV7T.aml, Tue Nov  8 16:27:11 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000082 (130)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "ACDT"
 *     OEM Table ID     "ps2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "ps2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Custom PS2 Map", 
            Package (0x02)
            {
                Package (0x00){}, 
                "e005=0"
            }
        }
    })
}

