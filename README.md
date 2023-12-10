# (VC³ 2023)

This is an implementation of [Vintage Computing Christmas Challenge 2023](https://logiker.com/Vintage-Computing-Christmas-Challenge-2023) for the IBM PC's bootsector, written in NASM.

## Building

```shell
make
```

## Running

You can run that in a PC emulator like **QEMU**, like this:

```shell
qemu-system-i386 -fda vccc.bin
```

Another option is flashing a usb drive (or a Floppy Disk) and booting your own PC with it.
