@echo off
setlocal
set mergehex="C:\Program Files (x86)\Nordic Semiconductor\nrf5x\bin\mergehex.exe"
mergehex.exe --merge .\SourceHex\s110_nrf51_8.0.0_softdevice.hex .\SourceHex\bootloader.hex --output .\SourceHex\intermediate_1.hex
mergehex.exe --merge .\SourceHex\intermediate_1.hex .\SourceHex\bluchip_application.hex --output .\SourceHex\intermediate_2.hex
mergehex.exe --merge .\SourceHex\intermediate_2.hex .\SourceHex\app_valid_setting_apply.hex --output bluchip.hex