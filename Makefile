output:main.o  message.o
	g++ main.o message.o -o output

main.o:main.cpp message.h
	g++ -c main.cpp
message.o: message.cpp message.h
	g++ -c message.cpp
clean:
	rm -rf *.o output
