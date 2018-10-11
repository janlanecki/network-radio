CC = g++
CFLAGS = -Wall -std=c++14 
TARGETS = transmitter receiver

.PHONY: all
all: $(TARGETS) 

err.o: err.cpp err.h
	$(CC) $(CFLAGS) -c err.cpp -o $@

radio_receiver.o: radio_receiver.cpp
	$(CC) $(CFLAGS) -c radio_receiver.cpp -o $@

menu.o: menu.cpp err.o radio_receiver.o
	$(CC) $(CFLAGS) -c menu.cpp err.o radio_receiver.o -o $@

receiver: menu.o radio_receiver.o err.o audiogram.h receiver.h \
					transmitter.h const.h
	$(CC) $(CFLAGS) menu.o radio_receiver.o err.o -o \
		$@ -lboost_program_options -lpthread

transmitter: radio_transmitter.cpp audiogram.h audio_transmitter.h const.h \
					transmitter.h receiver.h
	$(CC) $(CFLAGS) radio_transmitter.cpp -o $@ -lboost_program_options -lpthread

.PHONY: clean
clean:
	rm -f *.o $(TARGETS)
