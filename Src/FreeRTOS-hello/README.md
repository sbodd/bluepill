This foder contains hello world example running on bluepill.

This program demonstrates, creating tasks in FreeRTOS and running with same priority.
USART2 is used for this purpose to print messages from 2 running tasks.

Connect PORTA2 and PORTA3 pins of blupill with an USB to TTL uart converter.
Use any terminal emulation program like "minicom" to get the output by setting
the baudrate to 115200, data length 8-bit, no parity, 1 stop bit and hardware
flow control off.
