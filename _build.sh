@echo off
clear
CURRENTDIR=$PWD
echo Apply BuildCSharp shell file in SolARPipelineManager folder

cd ../../SolARPipelineManager
./BuildCSharp.sh
cd $CURRENTDIR

#setlocal ENABLEDELAYEDEXPANSION  ????

pushd ${0%/*} #%~dp0

LANG=csharp
COMPILER=linux-gcc
SOLAR_WRAPPER_VERSION=0.7.0
SOLAR_VERSION=0.7.0
XPCF_VERSION=2.3.4
OUT=$HOME/.remaken/packages/SolARBuild/$COMPILER/SolARWrapper/$SOLAR_WRAPPER_VERSION/$LANG
echo OUT: $OUT 



for swigfile in Swig/*.i 
do
    echo -------------------
    echo - $swigfile
    SWIG_FILE_NAME=`basename -s .i $swigfile`
    OUTPUT="$OUT/$SWIG_FILE_NAME"
    [ -d "$OUTPUT" ] && rm "$OUTPUT"/*.* || mkdir -p "$OUTPUT"
    swig -c++ -$LANG -small -O -outcurrentdir -I./Swig -I./Swig/include -I$HOME/.remaken/packages/$COMPILER/xpcf/$XPCF_VERSION/interfaces -I$HOME/.remaken/packages/SolARBuild/$COMPILER/SolARFramework/$SOLAR_VERSION/interfaces -DXPCF_USE_BOOST -dllimport SolARWrapper -namespace $SWIG_FILE_NAME -outdir $OUTPUT $swigfile
done

popd

cp "*.cxx" "$HOME/.remaken/packages/SolARBuild/$COMPILER/SolARWrapper"
cp "*.txt" "$HOME/.remaken/packages/SolARBuild/$COMPILER/SolARWrapper"
cp "*.in" "$HOME/.remaken/packages/SolARBuild/$COMPILER/SolARWrapper"

echo ----------------------- completed ----------------------------