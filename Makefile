CC = gcc
AR = ar rcs
RANLIB = ranlib
OBJ = arith.o trans.o


all: lib test


lib: $(OBJ)
	$(AR) libmath.a $^
	$(RANLIB) libmath.a
*.o: *.c
	$(CC) -c $< -o $@


test: libmath.a
	$(CC) -o test -L. test.c -lmath 
clean: 
	rm *.o *.a