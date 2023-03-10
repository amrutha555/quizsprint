all: quiz

quiz: main.o menu.o admin.o coordinator.o contestant.o validations.o
	gcc main.o menu.o admin.o coordinator.o contestant.o validations.o -o quiz

main.o: main.c
	gcc -c header.h main.c

menu.o: menu.c
	gcc -c header.h menu.c

admin.o: admin.c
	gcc -c header.h admin.c

coordinator.o: Coordinator.c
	gcc -c header.h Coordinator.c

contestant.o: contestant.c
	gcc -c header.h contestant.c

validations.o: validations.c
	gcc -c header.h validations.c

clean:
	rm *.o
