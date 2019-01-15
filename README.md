# kubnernetes-admix 
Use YAML2RPM to build/download a set of RPMS for Kubernetes and Docker-CE 

Pre-requisites
 - rocks-devel rpm from the Rocks repository (https://github.com/rocksclusters/core), installed
 - yaml2rpm rpm  from the RCIC-UCI-Pubic Repository (https://github.com/RCIC-UCI-Public/yaml2rpm)
 - rcic-module-support rpm from RCIC-UCIC-Public repository (https://github.com/RCIC-UCI-Public/yaml2rpm)

Note: to easily obtain binary versions of the above RPMS, one can clone the development RPMS repo
https://github.com/RCIC-UCI-Public/development-RPMS

And install the latest version of the RPMs.


Quickstart:
   - cd yamlspecs; make bootstrap; make; make unbootstrap
   
RPMS will be placed in RPMS/x86_64
