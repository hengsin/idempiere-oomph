#!/bin/sh -x
if [ ! -f eclipse-inst-win64.exe ]; then
	echo
	echo "*** Please download eclipse-inst-win64.exe from https://wiki.eclipse.org/Eclipse_Installer ***"
	echo
    exit
fi
mkdir -p target/eclipse-inst-win64
rm -r -f ./target/eclipse-inst-win64/*
unzip eclipse-inst-win64.exe -d target/eclipse-inst-win64/eclipse-installer
cat ini/append.txt >> ./target/eclipse-inst-win64/eclipse-installer/eclipse-inst.ini
cp -r setups ./target/eclipse-inst-win64/eclipse-installer/setups
cd target/eclipse-inst-win64
zip -r ../eclipse-inst-win64.zip eclipse-installer
cd ../..
ls -la ./target/eclipse-inst-win64.zip

