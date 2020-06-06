#!/usr/bin/zsh

CANDIR=${CANDIR:-$HOME/.trash}

function make_trash {
	mkdir --parents $CANDIR
}

function parse_args {
	while [[ $# -ne 0 ]] ; do
		case $1 in
			-e|--empty) empty_trash &> /dev/null ;;
			*) files+=($1) ;;
		esac
		shift
	done
}

function empty_trash {
	rm --recursive --force $CANDIR/*
	rm --recursive --force $CANDIR/.*
}

function main {
	[[ ${#files} -ne 0 ]] &&
		mv $files $CANDIR
}

make_trash
parse_args $@
main
