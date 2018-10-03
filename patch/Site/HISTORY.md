# 2.11.0p-enable-ft-code16-in-writeUInt32d.p0.patch

Enable function code 16 in writeUInt32D

Function code 16 (MODBUS_WRITE_MULTIPLE_REGISTERS) is used to write multiple
registers atomically. There is no point in not supporting this function.

https://github.com/epics-modules/modbus/commit/d9fc96d4ff57313ca07825c1972323fa25f86fd8

The change is mandatory for ESS, we have to use a patch while we are using R2-11. 


* created by Jeong Han Lee, han.lee@esss.se
* Wednesday, October  3 15:21:05 CEST 2018
