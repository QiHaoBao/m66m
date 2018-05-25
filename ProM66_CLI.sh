#!/bin/sh

###
## ProM specific
###
PROGRAM=ProM66
CP=${PROGRAM}.jar
LIBDIR=ProM66_lib
MAIN=org.processmining.contexts.uitopia.UI

###
## Main program
###

add() {
	CP=${CP}:$1
}


for lib in $LIBDIR/*.jar
do
	echo $lib
	add $lib
done
echo ${CP}
echo ${LIBDIR}

java -da -Xmx4G -classpath ${CP} -Djava.library.path=${LIBDIR} -Djava.util.Arrays.useLegacyMergeSort=true -DsuppressSwingDropSupport=false org.processmining.contexts.cli.CLI $1 $2
