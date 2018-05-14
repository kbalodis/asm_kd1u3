kd1u3: kd1u3.o kd1u3_main.o
	arm-linux-gnueabi-gcc -o kd1u3 kd1u3.o kd1u3_main.o

kd1u3_main.o: kd1u3_main.c
	arm-linux-gnueabi-gcc -g -mcpu=xscale -O0 -Wall -o kd1u3_main.o -c kd1u3_main.c

kd1u3.o: kd1u3.s
	arm-linux-gnueabi-as -g -mcpu=xscale -alh=kd1u3.lis -L -o kd1u3.o kd1u3.s

clean:
	rm kd1u3 *.o *.lis
