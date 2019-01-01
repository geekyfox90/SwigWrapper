CLS
@ECHO OFF

setlocal ENABLEDELAYEDEXPANSION

PUSHD %~dp0

::SET OUT=out\csharp
SET OUT=..\SolARUnitySamples\Assets\Standard Assets\SolARUnityPlugin\Wrapper

RMDIR /S /Q "%OUT%"

DEL /Q *.cxx

SET OPTIONS=^
 -c++ ^
 -csharp ^
 -small -O ^
 -Iswig ^
 -I%BCOMDEVROOT%/thirdParties/xpcf/2.1.0/interfaces ^
 -I%BCOMDEVROOT%/bcomBuild/SolARFramework/0.5.0/interfaces ^
 -dllimport SolARWrapper ^
 

:: -Iswig/SolARFramework ^
 

FOR %%F IN (*.i) DO (
ECHO ##########
ECHO # %%F
SET F=%%~nF
SET OUTPUT=%OUT%\!F:_=\!
MKDIR "!OUTPUT!"
CALL SWIG ^
 %OPTIONS% ^
 -namespace !F:_=.! ^
 -outdir "!OUTPUT!" ^
 %%F
)

POPD
