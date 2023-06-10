ECHO OFF

SET BUILD_CLASS_DIR_IMPLEMENTATION=bin

SET BUILD_CLASS_DIR_EXCEPTIONS=bin

SET RUN_CLASSPATH=%BUILD_CLASS_DIR_IMPLEMENTATION%;%BUILD_CLASS_DIR_EXCEPTIONS%;%CLASSPATH%

SET CLASS_TO_RUN=com.simpleatm.app.ATM_Program

ECHO CLASSPATH=%CLASSPATH%
ECHO BUILD_CLASS_DIR_IMPLEMENTATION=%BUILD_CLASS_DIR_IMPLEMENTATION%
ECHO BUILD_CLASS_DIR_EXCEPTIONS=%BUILD_CLASS_DIR_EXCEPTIONS%
ECHO RUN_CLASSPATH=%RUN_CLASSPATH%
ECHO CLASS_TO_RUN=%CLASS_TO_RUN%

java  -classpath %RUN_CLASSPATH%  %CLASS_TO_RUN%

PAUSE