# idempiere-oomph
Eclipse Oomph Project Setup Model for iDempiere Development environment.

## Pre-requisite
* JDK11
* Maven 3.6+

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
