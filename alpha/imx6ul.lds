SECTIONS {
    . = 0x87800000;
    .text :
    {
        build/alpha/start.o
        *(.text)
    }

    .rodata ALIGN(4) : {*(.rodata*)}
    .data ALIGN(4) : {*(.data)}
    __bss_start = .;
    .bss ALIGN(4) : {*(.bss) *(COMMON)}
    __bss_end = .;
}
