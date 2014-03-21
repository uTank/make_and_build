
set COMPILER_TOOLKIT=GCC

set GCC_BIN_PATH=D:\MinGW\bin
set GCC_INC_PATH=D:\MinGW\include
set GCC_LIB_PATH=D:\MinGW\lib


set TARGET_VERSION=1.00
set TARGET=uTank
set aFile=%TARGET_$(TARGET_VERSION)%_%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%

make -s %1 all

pause
