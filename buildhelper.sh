#!/bin/bash
#================================================
# Intializing the variables
#================================================
echo 
echo 
echo "Build Start Time --> " $(date +"%T")
echo 
echo 
echo 
#================================================
SECONDS=0
CMAKE_COMMAND="cmake"
GENERATOR="make"
CMAKE_SOURCE_DIR=.\


if [ "$1" == "buildTest" ]; then
    mkdir BuildTest
    cd BuildTest
    cmake  ../ -DBUILD_TYPE="TEST"
    make VERBOSE=1
    cd ..
elif [ "$1" == "buildApp" ]; then
    mkdir BuildApp
    cd BuildApp
    cmake  ../ -DBUILD_TYPE="APP"
    make VERBOSE=1
    cd ..
elif [ "$1" == "clean" ]; then 
    echo "Cleaning All Build Files"
    rm -rf Build*
elif [ "$1" == "runTest" ]; then 
    if [ -d "$CMAKE_SOURCE_DIR/BuildTest/" ]; then
        ./BuildTest/runTests
    fi
elif [ "$1" == "runApp" ]; then 
    if [ -d "$CMAKE_SOURCE_DIR/BuildApp/" ]; then
        ./BuildApp/runApp
    fi
else
    echo "help"
fi


echo 
echo 
echo "Build End Time --> " $(date +"%T")
echo "Total elapsed time --> " ${SECONDS}
echo 
echo 
echo 
#================================================