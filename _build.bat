CLS
@ECHO OFF

PUSHD %~dp0

SET OUTPUT="out\csharp"

RMDIR /S /Q %OUTPUT%
MKDIR %OUTPUT%

DEL /Q *.cxx

FOR %%F IN (*.i) DO (
CALL SWIG ^
 -csharp -namespace SolAR ^
 -c++ ^
 -fcompact -small -O ^
 -Iswig ^
 -I%BCOMDEVROOT%/thirdParties/xpcf/2.1.0/interfaces ^
 -I%BCOMDEVROOT%/bcomBuild/SolARFramework/0.5.0 ^
 -outdir %OUTPUT% ^
 %%F
)

POPD
