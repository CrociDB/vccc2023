all: bootsector

bootsector:
	nasm -f bin -o vccc.bin vccc.asm
	echo "\nSIZE REPORT\n\t - Source: $(shell wc -c vccc.asm)\n\t - Bin: $(shell wc -c vccc.bin)\n\n"

clear:
	rm vccc.bin
