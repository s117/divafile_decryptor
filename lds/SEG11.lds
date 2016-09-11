
SECTIONS {
	. = 0x960000;
	.SEG11 : {dump.o(.SEG11)}

	//. = 0x10000;
	//.text : { *(.text) }

	//. = 0x2000000;
	//.data : { *.*(.data) }
	//.bss : { *.*(.bss) }
}