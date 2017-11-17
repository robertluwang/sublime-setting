@ECHO OFF  
cd %~dp1  
ECHO [%DATE%-%TIME%] Compiling %~nx1 ...... 
IF EXIST %~n1.exe (  
DEL %~n1.exe
)  
gcc %~nx1 -o %~n1.exe  
IF EXIST %~n1.exe (  
ECHO [%DATE%-%TIME%] Running %~n1.exe ......
%~n1.exe  
)  