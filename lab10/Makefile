CC=gcc
CFLAGS=
LDFLAGS=
DEBUG=yes
ifeq ($(DEBUG),yes)
	CFLAGS +=-g -Wall
	LDFLAGS=
	
else
	CFLAGS +=-02 
	
endif
OBJ = max.o min.o variance.o

all: 

ifeq ($(DEBUG),yes)
	@echo "Mode debug"

else
	@echo "Mode release"

endif

$(OBJ) : max.c min.c variance.c 
	${CC} $(LDFLAGS) -c $^ -o $@ 


test.o :  min.h max.h variance.h

%.o: %.c
	@${CC} -c $^ -o $@ $(CFLAGS) 


install: My-binaire
	install My-binaire /home/haggai
My-binaire : $(OBJ) test.o 
	${CC} -o My-binaire $^ 	
clean :
	rm -rf *.o

