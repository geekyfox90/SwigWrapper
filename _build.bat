CLS
@ECHO OFF

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
xcopy "Swig\include\SolARPluginPipelineManager.cpp" "%BCOMDEVROOT%\bcombuild\SolARWrapper\include\"
xcopy "Swig\include\SolARPluginPipelineManager.h" "%BCOMDEVROOT%\bcombuild\SolARWrapper\include\"
xcopy "Swig\include\PipelineManagerAPI.h" "%BCOMDEVROOT%\bcombuild\SolARWrapper\include\"