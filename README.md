# OpenCore [HP Pavilion 15-cx0026nl](https://support.hp.com/lt-en/document/c06293221)
## Current OC version: 0.8.5

Working/not working:
* Everything works except WiFi&BT module (I'll replace it in the future with native supported one) and *(obviously)* dGPU which is turned off.
* have some problems with external monitor<b>\*</b> and sleep, removing `igfxfw=2` and/or `igfxrpsc=1` from `boot-args` may help.

**\* YES, USB-C PORT PASSES VIDEO** *...however* I can't get `4k&60Hz` on my AORUS FI32U (`4k@144Hz`), it is limited to `1440p@144Hz` or `1440p@60` with `HDR`.