@ECHO OFF  
cd %~dp1  
ECHO [%DATE%-%TIME%] Compiling %~nx1 ...... 
IF EXIST %~n1.exe (  
DEL %~n1.exe
) 
set GOROOT=%~d0\oldhorse\portableapps\go
set PATH=%GOROOT%\bin;%PATH% 
go.exe build -i %~nx1 
IF EXIST %~n1.exe (  
ECHO [%DATE%-%TIME%] Running %~n1.exe ......   
%~n1.exe  
)