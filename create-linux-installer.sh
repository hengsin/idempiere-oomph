#!/bin/sh -x
if [ ! -f eclipse-inst-linux64.tar.gz ]; then
	echo
	echo "*** Please download eclipse-inst-linux64.tar.gz from https://wiki.eclipse.org/Eclipse_Installer ***"
	echo
    exit
fi
mkdir -p target/eclipse-inst-linux64
rm -r -f target/eclipse-inst-linux64/*
tar -xf eclipse-inst-linux64.tar.gz -C target/eclipse-inst-linux64
cat ini/append.txt >> ./target/eclipse-inst-linux64/eclipse-installer/eclipse-inst.ini
cp -r setups ./target/eclipse-inst-linux64/eclipse-installer/setups
cd target/eclipse-inst-linux64
tar -cz -f ../eclipse-inst-linux64.tar.gz eclipse-installer
cd ../..
ls -la ./target/eclipse-inst-linux64.tar.gz

