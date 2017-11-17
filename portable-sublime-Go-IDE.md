My portable sublime located at C:\oldhorse\portableapps\SublimeText3.

## solution1 batch job to handle build and run
This is my small script, no any plugin needed for simply test Go code.

First part is rungo.bat, 

```
C:\oldhorse\portableapps\SublimeText3\Data\Packages\User\rungo.bat

@ECHO OFF  
cd %~dp1  
ECHO [%DATE%TIME%] Compiling %~nx1 ...... 
IF EXIST %~n1.exe (  
DEL %~n1.exe
) 
set GOROOT=%~d0\oldhorse\portableapps\go
set PATH=%GOROOT%\bin;%PATH% 
go.exe build -o %~n1.exe %~nx1 
IF EXIST %~n1.exe (  
ECHO [%DATE%-%TIME%] Running %~n1.exe ......   
%~n1.exe  
)
```

then call it from go.sublime-build at C:\oldhorse\portableapps\SublimeText3\Data\Packages\User

```
go.sublime-build
{  
    "cmd": ["C:\\oldhorse\\portableapps\\SublimeText3\\Data\\Packages\\User\\rungo.bat", "$file"],  
    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.go",  
    "encoding": "gbk"  
}
```

## soluton2 - Official plugin from golang

Install plugin [golang/sublime-build](https://github.com/golang/sublime-build) from Sublime Package Control, search "Golang Build" then install it.

Click Preferences->Package Setting->Golang Config->Setting User, will open golang.sublime-settings, this is your chance to setup customized setting for Go.
 
You also see this file in C:\oldhorse\portableapps\SublimeText3\Data\Packages\User\golang.sublime-settings

```
{
    "GOROOT": "C:\\oldhorse\\portableapps\\go",
    "GOPATH": "J:\\oldhorse\\test\\go",
    "PATH": "J:\\oldhorse\\test\\go\\bin;C:\\oldhorse\\portableapps\\go\\bin"  
}
```

Then you can load Go code in Sublime and build/run it, keep in mind to organize Go project like below structure:
```
$GOPATH\go\bin
$GOPATH\go\src\hello\hello.go
```

The output sample,
```
> Environment:
>   GOROOT=C:\oldhorse\portableapps\go
>   GOPATH=J:\oldhorse\test\go
> Directory: J:\oldhorse\test\go\src\hello
> Command: C:\oldhorse\portableapps\go\bin\go.exe run -v J:\oldhorse\test\go\src\hello\hello.go
> Output:
command-line-arguments
hello, world
> Elapsed: 1.067s
> Result: Success
```
