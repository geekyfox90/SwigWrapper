@echo off
cls

:: CHOICE /T 10 /C 123 /D 2 /M "PRESS 1- FULL VERSION, 2- NOVICE ONLY, 3- EXPERT ONLY     Make your choice in"
:: IF errorlevel 3 GOTO THREE
:: IF errorlevel 2 GOTO TWO
:: IF errorlevel 1 GOTO ONE
:: GOTO END

:: ONE
:: echo FULL VERSION

::SET CURRENTDIR="%cd%"
::echo Apply BuildCSharp bat file in SolARPipelineManager folder

::cd ..\..\SolARPipelineManager\
::call BuildCSharp.bat
::cd %CURRENTDIR%

setlocal ENABLEDELAYEDEXPANSION

PUSHD %~dp0

SET LANG=csharp

SET OUT=%BCOMDEVROOT%\bcombuild\SolARWrapper\%LANG%

SET OPTIONS=^
 -c++ ^
 -%LANG% ^
 -small -O ^
 -outcurrentdir ^
 -I./Swig ^
 -I./Swig/include ^
 -I%BCOMDEVROOT%/thirdParties/xpcf/2.2.0/interfaces ^
 -I%BCOMDEVROOT%/bcomBuild/SolARFramework/0.6.0/interfaces ^
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
:: START CMD /C 

POPD

xcopy "*.cxx" "%BCOMDEVROOT%\bcombuild\SolARWrapper" /Y
xcopy "*.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper" /Y
xcopy "*.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper" /Y
GOTO :END



REM :TWO
REM echo NOVICE VERSION
REM echo Apply BuildCSharp bat file in SolARPipelineManager folder
REM SET CURRENTDIR="%cd%"
REM cd ..\..\SolARPipelineManager\
REM call BuildCSharp.bat
REM cd %CURRENTDIR%
REM GOTO :END

REM :THREE
REM echo EXPERT VERSION
REM setlocal ENABLEDELAYEDEXPANSION

REM PUSHD %~dp0

REM SET LANG=csharp

REM SET OUT=%BCOMDEVROOT%\bcombuild\SolARWrapper\%LANG%

REM SET OPTIONS=^
 REM -c++ ^
 REM -%LANG% ^
 REM -small -O ^
 REM -outcurrentdir ^
 REM -I./Swig ^
 REM -I./Swig/include ^
 REM -I%BCOMDEVROOT%/thirdParties/xpcf/2.1.0/interfaces ^
 REM -I%BCOMDEVROOT%/bcomBuild/SolARFramework/0.5.2/interfaces ^
 REM -dllimport SolARWrapper ^
 

REM FOR %%F IN (Swig\*.i) DO (
REM ECHO ##########
REM ECHO # %%F
REM SET F=%%~nF
REM SET OUTPUT=%OUT%\!F:_=\!
REM DEL /Q "!OUTPUT!\*.*"
REM IF NOT EXIST "!OUTPUT!" MKDIR "!OUTPUT!"
REM CALL SWIG ^
 REM %OPTIONS% ^
 REM -namespace !F:_=.! ^
 REM -outdir "!OUTPUT!" ^
 REM %%F
REM )
REM :: START CMD /C 

REM POPD

REM xcopy "*.cxx" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
REM xcopy "CMakeLists.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
REM xcopy "packagedependencies.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
REM xcopy "cmake_uninstall.cmake.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
REM xcopy "bcom-SolARWrapper.pc.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
REM GOTO :END

:END
echo ----------------------- completed ----------------------------