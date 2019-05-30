ifdef ANONYMOUS
	DFLAG=-DANONYMOUS
endif

CC=gcc
RM=rm
EXE=lcx

ifeq ($(PLATFORM), windows)
	WINDOWS_LIB=-lws2_32 -lwsock32
	RM=del
	EXE=lcx.exe
endif

FLAGS=-pthread -O2 $(WINDOWS_LIB) $(DFLAG)

all : lcx.c
	$(CC) lcx.c -o $(EXE) $(FLAGS)

command : lcx.c
	$(CC) lcx.c -o $(EXE) $(FLAGS) -DCOMMAND_MODE

clean :
	$(RM) $(EXE)
