#!/usr/bin/env bash

DIR_SOURCE=`pwd`
DIR_BUILD=$DIR_SOURCE/../build

if [ -d $DIR_BUILD ]; then
    rm -rf $DIR_BUILD
fi

mkdir $DIR_BUILD
cd $DIR_BUILD
qmake CONFIG+=release PREFIX=/usr $DIR_SOURCE
make
make install INSTALL_ROOT=AppDir

wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
wget https://github.com/linuxdeploy/linuxdeploy-plugin-qt/releases/download/continuous/linuxdeploy-plugin-qt-x86_64.AppImage
chmod +x linuxdeploy*.AppImage
mkdir -p AppDir/usr/lib/
cp -r /usr/lib/x86_64-linux-gnu/nss AppDir/usr/lib/
./linuxdeploy-x86_64.AppImage --appdir AppDir
./linuxdeploy-plugin-qt-x86_64.AppImage --appdir AppDir
./linuxdeploy-x86_64.AppImage --appdir AppDir --output appimage

curl --upload-file MWE-x86_64.AppImage https://transfer.sh/MWE-QtWebEngine-x86_64.AppImage
