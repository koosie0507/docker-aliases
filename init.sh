#!/bin/zsh


function run_docker_command()
{
	local DOCKER_CMD
	if ( which docker > /dev/null 2>&1 ); then
		docker $@
	elif ( which lima > /dev/null 2>&1 ); then
		lima nerdctl $@
	else
		echo "Please install either Docker Desktop or Lima" 1>&2
	fi

}

alias dicker=run_docker_command

