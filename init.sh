#!/bin/zsh


function run_docker_command()
{
	local DOCKER_CMD
	if ( unalias docker > /dev/null 2>&1; type docker > /dev/null 2>&1 ); then
		docker $@
	elif ( unalias lima > /dev/null 2>&1; type lima > /dev/null 2>&1 ); then
		lima nerdctl $@
	else
		echo "Please install either Docker Desktop or Lima" 1>&2
	fi

}

alias docker=run_docker_command

