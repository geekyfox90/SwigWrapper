@echo off
cls

SET CURRENTDIR="%cd%"
echo Apply BuildCSharp bat file in SolARPipelineManager folder

cd ..\..\SolARPipelineManager\
call BuildCSharp.bat
cd %CURRENTDIR%

setlocal ENABLEDELAYEDEXPANSION

PUSHD %~dp0

SET LANG=csharp

SET OUT=%REMAKENROOT%\SolARWrapper\%LANG%

SET OPTIONS=^
 -c++ ^
 -%LANG% ^
 -small -O ^
 -outcurrentdir ^
 -I./Swig ^
 -I./Swig/include ^
 -I%REMAKENROOT%/../../win-cl-14.1/xpcf/2.3.0/interfaces ^
 -I%REMAKENROOT%/SolARFramework/0.6.0/interfaces ^
 -dllimport SolARWrapper ^
 

FOR %%F IN (Swig\*.i) DO (
ECHO ##########
ECHO # %%F
SET F=%%~nF
SET OUTPUT=%OUT%\!F:_=\!
DEL /Q "!OUTPUT!\*.*"
IF NOT EXIST "!OUTPUT!" MKDIR "!OUTPUT!"
CALL SWIG ^
 %OPTIONS% ^
 -namespace !F:_=.! ^
 -outdir "!OUTPUT!" ^
 %%F
)

POPD

xcopy "*.cxx" "%REMAKENROOT%\SolARWrapper" /Y
xcopy "*.txt" "%REMAKENROOT%\SolARWrapper" /Y
xcopy "*.in" "%REMAKENROOT%\SolARWrapper" /Y
GOTO :END

:END
echo ----------------------- completed ----------------------------