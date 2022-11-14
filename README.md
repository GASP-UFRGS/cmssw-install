# CMSSW-install

A script for installing the CMSSW software on CentOS locally.

## Instructions

You need to be in a computer running CentOS7 or inside a docker container. Instructions for creating a docker container with the cmssw pre-requisites can be found [here]()

By default, it will install the CMSSW_12_3_4 version with the slc7_amd64_gcc10 architecture. Those parameters can be changed by adding the taggs `--arch <architecture>` and `--version <CMSSW_version>`. Inside the environment, simply type:

`./cmssw_install.sh`

If an error about permissions appear, type `chmod +x cmssw_install.sh` and redo the command above. 


## Setting up the CMSSW environment

`scram project CMSSW_12_3_4`
`cd CMSSW_12_3_4/src`
`cmsenv`

One can also see all the releases compatible with the architecture chosen:
`scram list CMSSW`


Comments and suggestions are geatly appreciated.

