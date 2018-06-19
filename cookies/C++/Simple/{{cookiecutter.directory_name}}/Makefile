default: program

program.o: main.cpp
	g++ -std=c++11 -c main.cpp -o {{cookiecutter.program_name}}.o

program: program.o
	g++ {{cookiecutter.program_name}}.o -o {{cookiecutter.program_name}}

clean:
	-rm -f {{cookiecutter.program_name}}.o
	-rm -f {{cookiecutter.program_name}}
