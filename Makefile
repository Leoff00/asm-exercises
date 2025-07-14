exec: 
	cd $(SRC) \
	&& nasm -f elf64 $(SRC).asm -o $(SRC).o \
	&& ld -o $(SRC) $(SRC).o \
	&& cd ..
