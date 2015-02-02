#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$(readlink "$SOURCE")"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

link() {
	local name=$1;
	[[ -z "$name" ]] && echo "Expecting name" && exit 1;
	echo "Symlinking ~/.${name}"
	rm -rf ~/."${name}"
	ln -s "${DIR}/${name}" ~/."${name}"
}

git submodule init
git submodule update
link "vim"
link "vimrc"
