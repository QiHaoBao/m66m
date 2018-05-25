#!/bin/sh

###
## ProM specific
###
PROGRAM=ProM66
CP=./${PROGRAM}.jar
LIBDIR=./ProM66_lib
MAIN=org.processmining.contexts.uitopia.packagemanager.PMFrame

####
## Environment options
###
JAVA=java
MEM=1g

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

$JAVA -classpath ${CP} -Djava.library.path=${LIBDIR} -da -Xmx${MEM} ${MAIN}
