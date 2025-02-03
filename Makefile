
gel: y.tab.o lex.yy.c
	gcc -o gel y.tab.o -lfl

y.tab.c: gel.yy
	yacc -d gel.yy

lex.yy.c: gel.l
	lex gel.l

clean:
	rm -f y.tab.c y.tab.h lex.yy.c y.tab.o gel

.PHONY: clean
