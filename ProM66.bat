@setlocal enableextensions
@cd /d "%~dp0"
java -da -Xmx4G -XX:MaxPermSize=256m -classpath "ProM66.jar;ProM66_lib/*" -Djava.library.path=.//ProM66_lib -Djava.util.Arrays.useLegacyMergeSort=true -DsuppressSwingDropSupport=false org.processmining.contexts.uitopia.UI
