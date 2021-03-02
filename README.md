# idempiere-oomph
Custom oomph project setup model for iDempiere development environment.

## What the custom project setup model does
* Install tycho configuration plugin.
* Clone iDempiere source from git hub to <workspace location>/idempiere.
* Run mvn verify.
* Import projects into workspace.
* Set and load target platform.

## What the custom Eclipse installer does
* Install Eclipse IDE for Enterprise Java Developers.
* Execute the actions listed above.

## Pre-requisite
* JDK11
* Maven 3.6+

## Notes
* Due to pending pull request review, the installer and setup model checkout from hengsin/idempiere instead of from the idempiere/idempiere repository (and uses branch IDEMPIERE-4719).
* Until this have been accepted by idempiere/idempiere repository, DO NOT use this for actual development work. For now, this is purely for testing purpose only.
