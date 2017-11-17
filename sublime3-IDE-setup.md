# Sublime Text 3 IDE setup
Highlight:
- Sublime Text 3 already build in support 48 types of language syntax highlight, auto-complete etc
- Sublime Text 3 only provides few build package for compiling/running
- Here providing user defined build packages for most popularly languages and scripts: 
C/C++/Java/Go/Objc/Ruby/Lua/HTML/JavaScript/JQuery/bash
- it is portable ST3 IDE on windows

The user defined compiling/running configuration is under SublimeText3\Data\Packages\User.

## ST3 C build package

portable gcc located at L:\oldhorse\portableapps\mingw\bin.

create rungcc.bat,
```
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
```

create new build system gcc.sublime-build and save both to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["L:\\oldhorse\\portableapps\\SublimeText3\\Data\\Packages\\User\\rungcc.bat", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.c"
}
```

## ST3 C++ build package

portable g++ located at L:\oldhorse\portableapps\mingw\bin.

create rung++.bat,

```
@ECHO OFF  
cd %~dp1  
ECHO [%DATE%-%TIME%] Compiling %~nx1 ......  
IF EXIST %~n1.exe (  
DEL %~n1.exe
)  
g++ %~nx1 -o %~n1.exe  
IF EXIST %~n1.exe (  
ECHO [%DATE%-%TIME%] Running %~n1.exe ......   
%~n1.exe  
)   
```

create new build system g++.sublime-build and save both to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["L:\\oldhorse\\portableapps\\SublimeText3\\Data\\Packages\\User\\rung++.bat", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.cpp"
}
```

## ST3 Java build package

portable Java 8 JDK located at L:\oldhorse\portableapps\Java\jdk1.8.0_60.

create runJava.bat,

```
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
```

create new build system Javarun.sublime-build and save both to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["C:\\oldhorse\\portableapps\\SublimeText3\\Data\\Packages\\User\\runJava.bat", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.java"
}  
```

## ST3 perl build package

portable perl located at L:\oldhorse\portableapps\msys\bin.

create new build system perl.sublime-build and save to SublimeText3\Data\Packages\User,

```
{
    "cmd": ["C:\\oldhorse\\portableapps\\msys\\bin\\perl.exe", "-u", "$file"],
    "file_regex": "^[ ]*File \"(...*?)\", line ([0-9]*)",
    "selector": "source.perl"
}
```

## ST3 Python 2/3 build package

portable Python 2 located at L:\oldhorse\portableapps\python\PortablePython2.7.5.1\App
portable Python 3 located at L:\oldhorse\portableapps\python\PortablePython3.2.5.1\App

create new build system python2.sublime-build and save to SublimeText3\Data\Packages\User,

```
{
    "cmd": ["L:\\oldhorse\\portableapps\\python\\PortablePython2.7.5.1\\App\\python.exe", "-u", "$file"],
    "file_regex": "^[ ]*File \"(...*?)\", line ([0-9]*)",
    "selector": "source.python"
}
```

create new build system python3.sublime-build and save to SublimeText3\Data\Packages\User,

```
{
    "cmd": ["L:\\oldhorse\\portableapps\\python\\PortablePython3.2.5.1\\App\\python.exe", "-u", "$file"],
    "file_regex": "^[ ]*File \"(...*?)\", line ([0-9]*)",
    "selector": "source.python"
}
```

## ST3 Ruby build package

portable ruby located at L:\oldhorse\portableapps\ruby.

create new build system ruby.sublime-build and save to SublimeText3\Data\Packages\User,

```
{
    "cmd": ["L:\\oldhorse\\portableapps\\ruby\\Ruby2.1.0\\bin\\ruby.exe", "$file"],
    "file_regex": "^[ ]*File \"(...*?)\", line ([0-9]*)",
    "selector": "source.ruby"
}
```

## ST3 Go build package

portable Go located at L:\oldhorse\portableapps\go.

create rungo.bat ,

```
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
```

create new build system go.sublime-build and save both to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["L:\\oldhorse\\portableapps\\SublimeText3\\Data\\Packages\\User\\rungo.bat", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.go" 
}
```

## ST3 Lua build package

portable Lua located at L:\oldhorse\portableapps\Lua.

create new build system lua.sublime-build and save to SublimeText3\Data\Packages\User,

```
{
    "cmd": ["L:\\oldhorse\\portableapps\\Lua\\5.1\\lua.exe", "$file"],
    "file_regex": "^lua: (...*?):([0-9]*):?([0-9]*)",
    "selector": "source.lua"
}
```

## ST3 html/Javascript/JQuery build package

create new build system Chrome.sublime-build and save to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.html" 
}
```

If launching by default web browser, need to create new build system html.sublime-build and save to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["cmd", "/K", "start", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.html"
}
```

## ST3 Objective-C build package

portable GNUstep located at L:\oldhorse\portableapps\GNUstep .

create runobjc.bat,

```
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
```

create new build system objc.sublime-build and save both to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["L:\\oldhorse\\portableapps\\SublimeText3\\Data\\Packages\\User\\runobjc.bat", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.objc" 
}
```

## ST3 bash build package

portable bash located at L:\oldhorse\portableapps\msys\bin

create new build system bash.sublime-build and save to SublimeText3\Data\Packages\User,

```
{  
    "cmd": ["L:\\oldhorse\\portableapps\\msys\\bin\\bash.exe", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.bash"
}
```

