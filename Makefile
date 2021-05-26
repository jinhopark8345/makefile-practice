# -*- Makefile -*-
# make sure to use tab after the recipe name

# https://www.youtube.com/watch?v=GExnnTaBELk
# these target & action pairs are called recipes
#target: dependencies
#	action

all: geom tip

geom: geom.o gd.o
	gcc geom.o gd.o -o geom -l m

geom.o: geom.c gd.h
	gcc -c geom.c

gd.o: gd.c
	gcc -c gd.c

tip: tip.o gd.o
	gcc tip.o gd.o -o tip

tip.o: tip.c gd.h
	gcc -c tip.c

# remove obj files and remove exectuables
clean:
	rm -f *.o tip geom
