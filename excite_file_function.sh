#!/bin/bash
usage() {
echo " provide the name of file with script "
echo "surname: $0 file name"
}
exc_file (){
local file=$1
[[ -f $file ]] && return 0 ||return 1
}
[[ $# -eq 0 ]] && usage  

if (exc_file "$1")
then 
echo "file found"
else
echo " file not found "
fi
