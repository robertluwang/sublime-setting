@ECHO OFF

cd %~dp1 
ECHO [%DATE%-%TIME%] Compiling %~nx1 .......
IF EXIST %~n1.exe (  
DEL %~n1.exe
) 
set GNUstep=%~d0\oldhorse\portableapps\GNUstep
set PATH=%GNUstep%\bin;%GNUstep%\GNUstep\System\Tools;%PATH%
%GNUstep%\bin\gcc -o %~n1  %~nx1  -I %GNUstep%\GNUstep\System\Library\Headers -L %GNUstep%\GNUstep\System\Library\Libraries -lobjc -lgnustep-base -fconstant-string-class=NSConstantString
IF EXIST %~n1.exe ( 
ECHO [%DATE%-%TIME%] Running %~n1.exe ......  
%~n1.exe  
) 

