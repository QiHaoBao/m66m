#!/bin/sh

###
## ProM specific
###
PROGRAM=XESame16
CP=./${PROGRAM}.jar
LIBDIR=./XESame16_lib
MAIN=org.processmining.mapper.ui.MainFrame

###
## Main program
###

add() {
	CP=${CP}:$1
}


for lib in $LIBDIR/*.jar
do
	add $lib
done

java -da -classpath ${CP} -Djava.library.path=${LIBDIR} ${MAIN}
