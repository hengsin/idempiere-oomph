# idempiere-oomph
Eclipse Oomph Project Setup Model for iDempiere Development environment.

## Pre-requisite
* JDK11
* Maven 3.6+
* Git (https://git-scm.com/downloads)

## What the iDempiere Project Setup Model does
* Install Tycho Configuration plugin.
* Clone iDempiere source (master branch) from github.com/idempiere/idempiere to <workspace location>/idempiere 
* Run "mvn verify".
* Import iDempiere projects into workspace.
* Set and load iDempiere Target Platform (idempiere-201101).

## What the custom Eclipse installer does
* Install "Eclipse IDE for Enterprise Java Developers".
* Execute the Project Setup Model actions listed above (Note that the Project Setup Model actions are auto executed after the first launch of the Eclipse IDE, be patient and wait for the popup dialog).

## Installation
* Download the installer archive (idempiere-eclipse-inst-jre-*) for your OS (win, linux or mac). 
* Extract the downloaded archive to a folder and run it (eclipse-inst for linux and mac, eclipse-inst.exe for window). 
* It is a wizard interface and you should tick the 'iDempiere Master' option at second page.

## Steps to Create Installer
* Update setups/org.eclipse.products.setup from https://git.eclipse.org/c/oomph/org.eclipse.oomph.git/tree/setups/org.eclipse.products.setup.
* Download installer from https://wiki.eclipse.org/Eclipse_Installer.
* Extract the downloaded installer archive (see notes for Mac and Windows below)
* Copy setups folder to the extracted eclipse-installer folder.
* Append ini/append.txt to eclipse-installer/eclipse-inst.ini
* Linux, Window: compress the eclipse-installer folder. Mac: compress the "Eclipse Installer.app" folder.

## Notes for Mac
* The eclipse-installer is the "Eclipse Installer.app/Contents/Eclipse" folder.

## Notes for Windows
* Extract eclipse-inst-win64.exe to eclipse-inst-win64 folder
* mkdir exp
* java -classpath ./eclipse-inst-win64 org.eclipse.oomph.extractor.lib.BINExtractor ./eclipse-inst-win64.exe ./exp/product.zip -export ./exp/marker.txt ./exp/extractor.exe ./exp/org.eclipse.oomph.extractor.lib.jar ./exp/product-descriptor
* Extract exp/product.zip to exp/product
* rename exp/product to exp/eclipse-installer
