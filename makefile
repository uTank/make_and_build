


CROSS =

CC = $(CROSS)gcc 
SIZE = $(CROSS)size
STRIP = $(CROSS)strip
OBJCOPY = $(CROSS)objcopy

OBJ = ./

LFLAGS = -Wall
#C_OBJECTS_DDR =

#project file directory
#VPATH += $(wildcard $(SRC)/*) $(wildcard $(SRC)/*/*) $(wildcard $(SRC)/*/*/*)

C_OBJECTS = hello1.o hello2.o hello3.o main.o

all: $(C_OBJECTS)
	$(CC) $(LFLAGS) -o $(TARGET) $^
	
$(C_OBJECTS): $(OBJ)/%.o: %.c Makefile 
	#echo xxx
	echo CC $<
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf *.o
	rm -rf *.exe
