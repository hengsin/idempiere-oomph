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
* Set and load iDempiere Target Platform (idempiere-210426).
* You can override the ${github.repository}, Git clone branch and Target Platform variables to setup source from other repository (for e.g your own fork repository) or other branch from the idempiere/idempiere repository (for e.g release-8.2 branch).
* Alternatively, change the value for the variables above at  eclipse-installer/setups/idempiere.setup file to create your own custom installer (You should change the name attribute to differentiate it from the default setup).

## What the custom Eclipse installer does
* Install "Eclipse IDE for Enterprise Java Developers".
* Execute the Project Setup Model actions listed above (Note that the Project Setup Model actions are auto executed after the first launch of the Eclipse IDE, be patient and wait for the popup dialog).

## Installation
* Download the installer archive (idempiere-eclipse-inst-jre-*) for your OS (win, linux or mac).
* Extract the downloaded archive to a folder and run it (eclipse-inst for linux and mac, eclipse-inst.exe for window).
* It is a wizard interface and you should tick the 'iDempiere Master' option at second page.

## Steps to Create Installer
* git clone https://git.eclipse.org/r/oomph/org.eclipse.oomph.git
* Update setups/org.eclipse.products.setup from org.eclipse.oomph/setups/org.eclipse.products.setup inside the clone source above.
  *  The <product name="epp.package.jee"label="Eclipse IDE for Enterprise Java and Web Developers"> section.
  *  Copy the <version ..> part for the version that you are creating the installer for (for e.g 2021-06)
* Update setups/idempiere.setup
  *  Update name attribute of setup:Project to idempiere.<version>.<target platform timestamp> (for e.g idempiere.10.220525).
  *  Update defaultValue for idempiere.target.platform setupTask.
* Download installer from https://wiki.eclipse.org/Eclipse_Installer.
* Copy the downloaded installer to root folder
* Run create-linux-installer.sh, create-mac-installer.sh and create-windows-installer.sh
  * Installer archive for linux, mac and windows will be created at the target folder.

## Steps to Update installer
* If the changes is just idempiere.setup and/or idempiere.projects.setup, download the latest archive from https://github.com/hengsin/idempiere-oomph/releases.
* Extract the downloaded archive, replace idempiere.setup and/or idempiere.projects.setup from project source.
* Use the updated archive to create a new release.
* For new Eclipse version, use the steps above to create a new installer.

## Create your own custom installer
* Download the installer archive from the release section
* Extract the archive
* Edit eclipse-installer/setups/idempiere.setup
  * Change name attribute of setup:Project. That should be a unique name for your setup profile and is use to reference the local variable cache.
  * Edit defaultValue for git.clone.branch setupTask. This is the branch that you want to check out source from.
  * Edit defaultValue for github.repository setupTask. This is the path to your github repository (for e.g, mine is hengsin/idempiere)
  * Edit defaultValue for idempiere.target.platform. This is the name of your target platform.
* After you have completed the changes, you can use it directly or archive it for redistribution. For testing, it is recommended to copy the eclipse-installer folder to a temporary location and run it from there. Note that if you want to archive it for redistribution, you should archive the folder that you have not attempt to run the installer.

## Notes for Mac
* The eclipse-installer is inside the "Eclipse Installer.app/Contents/Eclipse" folder.

## Notes for Windows
* Following are steps to extract windows installer archive using org.eclipse.oomph.extractor.lib.BINExtractor, use this if unzip doesn't work to extract the actual contents
* Extract eclipse-inst-win64.exe to eclipse-inst-win64 folder
* mkdir exp
* java -classpath ./eclipse-inst-win64 org.eclipse.oomph.extractor.lib.BINExtractor ./eclipse-inst-win64.exe ./exp/product.zip -export ./exp/marker.txt ./exp/extractor.exe ./exp/org.eclipse.oomph.extractor.lib.jar ./exp/product-descriptor
* Extract exp/product.zip to exp/product
* rename exp/product to exp/eclipse-installer

## Local Variables Cache
* Local variables cache is store at ~/.eclipse/org.eclipse.oomph.setup/setups
* To reset local variables cache, remove the following file at the folder above:
  * user.setup

