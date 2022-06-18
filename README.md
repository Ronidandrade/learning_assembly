# Required programs

- nasm

# Compile (.asm)

~~~shell
nasm -f elf64 <file.asm>
~~~

~~~shell
ld -s -o <new_name_to_output_file> <file.o>
~~~

# Run the output fille

~~~shell
./<output_file>
~~~

## The **compile.sh** file:

> Deve ser inserido na pasta com os arquivos **.asm** e executado via terminal.
