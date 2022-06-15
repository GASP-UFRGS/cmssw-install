#!/bin/bash
#default versions
architecture=slc7_amd64_gcc10
CMSSW_version=12_3_4

Help()
{

	cat <<-END
	${0##*/}: Script for installing the CMS software (CMSSW)

	Usage:

		--arch <architecture>
			specify the architecture. (default: slc7_amd64_gcc11)
		
		--version <CMSSW release>
			The version of CMSSW. (default: 12_3_4)
	END
	exit
}


while [ $# -gt 0 ]; do
	case $1 in
		--help)
			Help
    	exit
			;;
	  --arch)
			architecture=$2
			shift 2
			;;
		--version)
			CMSSW_version=$2
			shift 2
			;;
	esac
done 

echo "Installing cmssw"
echo "archichecture=${architecture}"
echo "CMSSW_version=${CMSSW_version}"

mkdir build
cp -r SITECONF/ build/
cd build
wget http://cmsrep.cern.ch/cmssw/bootstrap.sh;
sh ./bootstrap.sh -a ${architecture} setup;
./common/cmspkg -a ${architecture} install cms+cmssw+CMSSW_${CMSSW_version};

echo "CMSSW install ended succesfully"

