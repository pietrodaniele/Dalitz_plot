CC = g++
CFLAGS = -Wall -O3 --std=c++11

main.exe : main.o random.o funzioni.o
	$(CC) funzioni.o random.o main.o -o main.exe
random.o : random.cpp random.h
	$(CC) -c random.cpp -o random.o $(CFLAGS)
funzioni.o: funzioni.h funzioni.cpp
	$(CC) -c funzioni.cpp -o funzioni.o $(CFLAGS)
main.o : main.cpp random.h funzioni.h
	$(CC) -c main.cpp -o main.o $(CFLAGS)
clean :
	rm *.o main.exe seed.out