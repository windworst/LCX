ifdef ANONYMOUS
	DFLAG=-DANONYMOUS
endif

all : lcx.c
	cc lcx.c -o lcx -pthread -O2 $(DFLAG)

command : lcx.c
	cc lcx.c -o lcx -pthread -O2 -DCOMMAND_MODE $(DFLAG)

clean :
	rm lcx
