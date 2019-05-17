@echo off
cls

CHOICE /T 10 /C 123 /D 2 /M "PRESS 1- FULL VERSION, 2- NOVICE ONLY, 3- EXPERT ONLY     Make your choice in"
IF errorlevel 3 GOTO THREE
IF errorlevel 2 GOTO TWO
IF errorlevel 1 GOTO ONE
GOTO END

:ONE
echo FULL VERSION

SET CURRENTDIR="%cd%"
echo Apply BuildCSharp bat file in SolARPipelineManager folder

cd ..\..\SolARPipelineManager\
call BuildCSharp.bat
cd %CURRENTDIR%

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
 -I%BCOMDEVROOT%/thirdParties/xpcf/2.1.0/interfaces ^
 -I%BCOMDEVROOT%/bcomBuild/SolARFramework/0.5.2/interfaces ^
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

xcopy "*.cxx" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "CMakeLists.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "packagedependencies.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "cmake_uninstall.cmake.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "bcom-SolARWrapper.pc.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
GOTO :END

:TWO
echo NOVICE VERSION
echo Apply BuildCSharp bat file in SolARPipelineManager folder
SET CURRENTDIR="%cd%"
cd ..\..\SolARPipelineManager\
call BuildCSharp.bat
cd %CURRENTDIR%
GOTO :END

:THREE
echo EXPERT VERSION
setlocal ENABLEDELAYEDEXPANSION

PUSHD %~dp0

SET LANG=csharp
::SET LANG=python
::SET LANG=xml

SET OUT=%BCOMDEVROOT%\bcombuild\SolARWrapper\%LANG%
::SET OUT=..\SolARUnitySamples\Assets\Standard Assets\SolARUnityPlugin\Wrapper

::RMDIR /S /Q "%OUT%"

::DEL /Q *.cxx

SET OPTIONS=^
 -c++ ^
 -%LANG% ^
 -small -O ^
 -outcurrentdir ^
 -I./Swig ^
 -I./Swig/include ^
 -I%BCOMDEVROOT%/thirdParties/xpcf/2.1.0/interfaces ^
 -I%BCOMDEVROOT%/bcomBuild/SolARFramework/0.5.2/interfaces ^
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

xcopy "*.cxx" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "CMakeLists.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "packagedependencies.txt" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "cmake_uninstall.cmake.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
xcopy "bcom-SolARWrapper.pc.in" "%BCOMDEVROOT%\bcombuild\SolARWrapper"
GOTO :END

:END
echo ----------------------- completed ----------------------------