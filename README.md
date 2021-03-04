# idempiere-oomph
Custom oomph project setup model for iDempiere development environment.

## What the custom project setup model does
* Install tycho configuration plugin.
* Clone iDempiere source (master branch) from github to <workspace location>/idempiere 
* Run mvn verify.
* Import projects into workspace.
* Set and load target platform.

## What the custom Eclipse installer does
* Install Eclipse IDE for Enterprise Java Developers.
* Execute the actions listed above.

## Pre-requisite
* JDK11
* Maven 3.6+

## Installation
* Download the installer archive (idempiere-eclipse-inst-jre-*) for your OS (win, linux or mac). 
* Extract the downloaded archive to a folder and run it (eclipse-inst for linux and mac, eclipse-inst.exe for window). 
* It is a wizard interface and you should tick the 'idempiere' option at second page.
