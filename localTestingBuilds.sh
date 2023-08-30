#!/bin/bash

if ! [ -d "executables" ]; then
  mkdir executables
fi

BuildTypes="Debug Release RelWithDebInfo MinSizeRel"
for buildType in $BuildTypes; do
  if ! [ -d "build_${buildType}" ]; then
    mkdir "build_${buildType}"
  fi
  cd "build_${buildType}"
  echo "${buildType} build"
  cmake -DCMAKE_BUILD_TYPE=$buildType ..
  make
  cd .. && echo ""
  if [ -f "build_${buildType}/Ifhi" ]; then
    mv "build_${buildType}/Ifhi" "executables/Ifhi_${buildType}"
  else
    # Remove outdated builds than could've left from previous runs
    rm -f "executables/Ifhi_${buildType}"
  fi
done

if [ -d "tools" ] && [ -f "tools/sstrip" ]; then
  echo "Tools directory found - skipped."
else
  echo "Tools directory not found or it is incomplete - setting up..."
  rm -rf "tools"
  mkdir "tools"
  cd "tools"
  git clone "https://github.com/BR903/ELFkickers.git"
  cd "ELFkickers/sstrip"
  make
  cd "../../.."
  mv "tools/ELFkickers/sstrip/sstrip" "tools/sstrip"
  rm -rf "tools/ELFkickers"
fi

echo ""
cd executables

# Making compressed version of the MinSizeRel build that relies on stripping info and gzip
rm -f "Ifhi_tmp"
rm -f "Ifhi_Compressed"
if [ -f "Ifhi_MinSizeRel" ]; then
  echo "MinSizeRel build found - making Compressed build..."
  cp "Ifhi_MinSizeRel" "Ifhi_tmp"
  strip -s -R .comment -R .gnu.version "Ifhi_tmp"
  ./../tools/sstrip "Ifhi_tmp"
  echo "dd bs=1 skip=61<\$0|gunzip>/tmp/C;chmod +x /tmp/C;/tmp/C;exit" >> "Ifhi_Compressed"
  gzip -cn9 "Ifhi_tmp" >> "Ifhi_Compressed"
  rm "Ifhi_tmp"
  chmod +x "Ifhi_Compressed"
fi

# Show file sizes per build
ls -go --time-style=+ | cut -c 14-
cd ..

echo ""
echo "\"Ifhi_Compressed\" is based on the MinSizeRel build and relies on gzip to be installed in order to run, and on git in order to be built. See https://int21.de/linux4k/ for more info about compression techniques used."
echo ""
