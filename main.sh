wine#!/bin/bash

set -e

cd ~

winepid= $(pidof wineserver | cat)

if [ "${winepid}" != "" ]; then
  kill -SIGKILL "${winepid}"
fi

if [[ ! -d ~/.wine ]]; then
  echo "Starting BetaCloud Calculator.."
  cd ~
  tar xvfz ~/BetaCloudCalculatorOnline*/__pkgs__/dot_wine.tgz > ~/log.txt
  wineboot
  ln -s ~/BetaCloudCalculatorOnline*/__pkgs__/Flowgorithm.exe ~/
  ln -s ~/BetaCloudCalculatorOnline*/ALGORITMI ~/.wine/drive_c/users/runner/Desktop/
fi

wine64 C:\\Users\\runner\\Desktop\\ALGORITMI\\Programs\\BetaCloudCalculator.exe