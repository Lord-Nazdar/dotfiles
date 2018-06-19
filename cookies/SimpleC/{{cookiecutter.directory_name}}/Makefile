default: program

program.o: main.c
	gcc -c main.c -o {{cookiecutter.program_name}}.o

program: program.o
	gcc {{cookiecutter.program_name}}.o -o {{cookiecutter.program_name}}

clean:
	-rm -f {{cookiecutter.program_name}}.o
	-rm -f {{cookiecutter.program_name}}
