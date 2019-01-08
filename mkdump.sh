#!/bin/bash
# very simple script for compile, convert and dump prog in bluepill

APPLOC="$PWD/Src/FreeRTOS-hello"

cd $APPLOC
INPFL=`pwd | sed -n 's/.*\(Src[/][a-zA-Z0-9_-]*\).*/\1/p' | cut -d '/' -f2`

echo -e "compiling ...\n"
make
echo -e "end of compilation.\n"

echo -e "convert elf to bin.\n"
# change the arm-none-eabi-objcopy binary path accordingly 
$HOME/Downloads/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-objcopy -Obinary $INPFL.elf $INPFL.bin
echo -e "conversion done\n"

echo -e "now writing to flash ...\n "
sudo $PWD/flashTool/st-flash write $INPFL.bin 0x08000000

cd -
