#!/bin/sh
# This renames RPMs downloaded from the kubernetes repo because of odd
# file naming for some of the RPMs. 
# When downloading RPMS from the K8S repo using
#    repos=base,updates,extras,kubernetes
#    kubepkgs=kubectl kubeadm kubelet
#    yumdownloader -y --destdir=. --resolve --enablerepo=$repos $kubepkgs
#

for f in *rpm; do
	name=$(rpm -qip $f | awk '/^Name/{printf "%s", $NF}')
	release=$(rpm -qip $f | awk '/^Release/{printf "%s", $NF}')
	version=$(rpm -qip $f | awk '/^Version/{printf "%s", $NF}')
	arch=$(rpm -qip $f | awk '/^Architecture/{printf "%s", $NF}')
	newname=$name-$version-$release.$arch.rpm
	if [ "$f" != "$newname" ]; then
		mv $f $newname
	fi
done

