# marcos

## Setup

This project is being developed on Ubuntu 18.04  

Boot.bin is a 512 bytes file containing basic boot instructions  
boot_sect.asm contains the same instructions in assembler, which can be translated to bin using:  
> nasm boot_sect.asm -f bin -o boot_sect.bin

Testing the .bin files using a CPU emulator can be done using Qemu.  
> sudo apt install qemu  
> qemu-system-i386 boot_sect.bin

Seeing the content of a binary file can be done either by opening it with a proper hex editor, or with od:  
> od -t x1 -A n boot_sect.bin  