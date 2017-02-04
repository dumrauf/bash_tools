#!/usr/bin/env bash


function check_dependencies {
	dependencies=$1
	for dependency in ${dependencies};
	do
		if ! hash ${dependency} 2>/dev/null;
		then
		        echo -e "This script requires '${dependency}' but it cannot be detected. Aborting..."
		        exit 1
		fi
	done
}
