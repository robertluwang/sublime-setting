@ECHO OFF  
cd %~dp1  
ECHO [%DATE%-%TIME%] Compiling %~nx1 ......  
IF EXIST %~n1.class (  
DEL %~n1.class  
)  
%~d0\oldhorse\portableapps\Java\jdk1.8.0_60\bin\javac %~nx1  
IF EXIST %~n1.class (  
ECHO [%DATE%-%TIME%] Running %~n1 ......   
java %~n1  
)  