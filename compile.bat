ECHO OFF
 
SET  CLASSPATH_JAR=src\lib\static\junit\junit-4.12.jar;src\lib\static\junit\hamcrest-core-1.3.jar

SET  SRC_IMPLEMENTATION=src

SET  SRC_JUNIT=src

SET SRC_CUSTOM_EXCEPTIONS=src

SET    CLASS_TO_COMPILE_IMPLEMENTATION=%SRC_IMPLEMENTATION%\com\simpleatm\app\ATM_Program.java

SET CLASS_TO_COMPILE_JUNIT=%SRC_JUNIT%\com\simpleatm\test\SimpleATMTests.java

SET CLASS_TO_COMPILE_EXCEPTIONS=%SRC_CUSTOM_EXCEPTIONS%\com\simpleatm\exceptions\InsufficientFundsException.java

SET BUILD_CLASS_DIR_IMPLEMENTATION=bin

SET BUILD_CLASS_DIR_JUNIT=bin

SET BUILD_CLASS_DIR_EXCEPTIONS=bin

ECHO CLASSPATH_JAR=%CLASSPATH_JAR%

ECHO SRC_IMPLEMENTATION=%SRC_IMPLEMENTATION%

ECHO SRC_JUNIT=%SRC_JUNIT%

ECHO SRC_CUSTOM_EXCEPTIONS = %SRC_CUSTOM_EXCEPTIONS%

ECHO CLASS_TO_COMPILE_IMPLEMENTATION=%CLASS_TO_COMPILE_IMPLEMENTATION%

ECHO CLASS_TO_COMPILE_JUNIT=%CLASS_TO_COMPILE_JUNIT%

ECHO CLASS_TO_COMPILE_EXCEPTIONS =%CLASS_TO_COMPILE_EXCEPTIONS%

ECHO BUILD_CLASS_DIR_IMPLEMENTATION=%BUILD_CLASS_DIR_IMPLEMENTATION%

ECHO BUILD_CLASS_DIR_JUNIT=%BUILD_CLASS_DIR_JUNIT%

ECHO BUILD_CLASS_DIR_EXCEPTIONS =%BUILD_CLASS_DIR_EXCEPTIONS%


javac -sourcepath %SRC_IMPLEMENTATION% -cp %CLASSPATH_JAR% -d %BUILD_CLASS_DIR_IMPLEMENTATION% %CLASS_TO_COMPILE_IMPLEMENTATION%

javac -sourcepath %SRC_IMPLEMENTATION% -cp %CLASSPATH_JAR%;%BUILD_CLASS_DIR_IMPLEMENTATION% -d %BUILD_CLASS_DIR_EXCEPTIONS% %CLASS_TO_COMPILE_EXCEPTIONS%

javac -sourcepath %SRC_IMPLEMENTATION% -cp %CLASSPATH_JAR%;%BUILD_CLASS_DIR_IMPLEMENTATION%  -d %BUILD_CLASS_DIR_JUNIT% %CLASS_TO_COMPILE_JUNIT% 



PAUSE




