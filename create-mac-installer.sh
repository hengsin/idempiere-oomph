#!/bin/sh -x
if [ ! -f eclipse-inst-mac64.tar.gz ]; then
	echo
	echo "*** Please download eclipse-inst-mac64.tar.gz from https://wiki.eclipse.org/Eclipse_Installer ***"
	echo
    exit
fi
mkdir -p target/eclipse-inst-mac64
rm -r -f target/eclipse-inst-mac64/*
tar -xf eclipse-inst-mac64.tar.gz -C target/eclipse-inst-mac64
cat ini/append.txt >> ./target/eclipse-inst-mac64/"Eclipse Installer.app"/Contents/Eclipse/eclipse-inst.ini
cp -r setups ./target/eclipse-inst-mac64/"Eclipse Installer.app"/Contents/Eclipse/setups
cd target/eclipse-inst-mac64
tar -cz -f ../eclipse-inst-mac64.tar.gz "Eclipse Installer.app"
cd ../..
ls -la ./target/eclipse-inst-mac64.tar.gz

