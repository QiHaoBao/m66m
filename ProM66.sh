#!/bin/sh

###
## ProM specific
###
PROGRAM=ProM66
CP=./${PROGRAM}.jar
LIBDIR=./ProM66_lib
MAIN=org.processmining.contexts.uitopia.UI

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

java -da -Xmx4G -XX:MaxPermSize=256m -classpath ${CP} -Djava.library.path=${LIBDIR} -Djava.util.Arrays.useLegacyMergeSort=true -DsuppressSwingDropSupport=false ${MAIN}
