hello: hello.o
	ld -m elf_x86_64 -o hello hello.o
hello.o: hello.asm
	nasm -f elf64 -F dwarf -g hello.asm 
