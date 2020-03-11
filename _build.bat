@echo off
cls
SET CURRENTDIR=%cd%
echo Apply BuildCSharp bat file in SolARPipelineManager folder

cd ..\..\SolARPipelineManager\
call BuildCSharp.bat
cd %CURRENTDIR%

setlocal ENABLEDELAYEDEXPANSION

PUSHD %~dp0

SET LANG=csharp
SET COMPILER=win-cl-14.1
SET OUT=%REMAKEN_PKG_ROOT%\packages\SolARBuild\%COMPILER%\SolARWrapper\%LANG%

SET OPTIONS=^
 -c++ ^
 -%LANG% ^
 -small -O ^
 -outcurrentdir ^
 -I./Swig ^
 -I./Swig/include ^
 -I%REMAKEN_PKG_ROOT%/packages/%COMPILER%/xpcf/2.3.1/interfaces ^
 -I%REMAKEN_PKG_ROOT%/packages/SolARBuild/%COMPILER%/SolARFramework/0.7.0/interfaces ^
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

xcopy "*.cxx" "%REMAKEN_PKG_ROOT%\packages\SolARBuild\%COMPILER%\SolARWrapper" /Y
xcopy "*.txt" "%REMAKEN_PKG_ROOT%\packages\SolARBuild\%COMPILER%\SolARWrapper" /Y
xcopy "*.in" "%REMAKEN_PKG_ROOT%\packages\SolARBuild\%COMPILER%\SolARWrapper" /Y
GOTO :END

:END
echo ----------------------- completed ----------------------------