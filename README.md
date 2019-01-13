# bluepill-stm32
This project contains FreeRTOS V9.0.0 source integrated with bluepill (stm32f103c8t6).

This source is tested with the following hardware :
 1. STM32F103C8T6 (20KB ram, 64KB flash memory)
 2. ST-LINK V2 (Programmer and debugger)

# Software :
 1. Host OS - Ubuntu 14.04LTS
 2. STM32 standard peripheral library V3.5.0
 3. FreeRTOS V9.0.0
 4. Cross toolchain - gnu-arm-none-eabi-7-2018-q2-update
 5. Flash tool - https://github.com/texane/stlink

# To test:
 1. install the toolchain and libarary.
 2. change the TOOLROOT path in Makefile.common
 3. change arm-none-eabi-objcopy path in mkdump.sh
 4. run bash mkdump.sh (it will compile and flash final binary to bluepill, will 
    ask for root password while flashing)
 5. go to app dir and type make clean to remove generated bins and object files
