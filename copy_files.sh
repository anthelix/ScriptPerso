#!/bin/sh
#This script will search for files defined by SUFFIX_ARG in SPATH
#directory and copy them to DPATH directory
#The files that already exist in destination will be skipped

#Script Variables
SPATH="$HOME"
DPATH="$HOME/Documents/projetGit/scriptPerso"
PREFIX_ARG=".zshrc*"
ACTION_TIME=`date +"[%d-%m-%y %T]:"`
# COPY_LOG=COPY-`date +"%d-%m-%y_%T"`.log

echo "${ACTION_TIME} Starting copy task"
find ${SPATH} -maxdepth 1 -type f -name "${PREFIX_ARG}" -print | while read path
do
   FN="${path##*/}" #extract the file name from the path
   ACTION_TIME=`date +"[%d-%m-%y %T]:"`
   FN1=$(echo $FN| cut -d'.' -f 2)
   echo "Hello ${FN} ...^^"  
   echo "${ACTION_TIME} Trying to copy ${FN}"
   cp -fuv "$path" "${DPATH}/${FN1}"
   ACTION_TIME=`date +"[%d-%m-%y %T]:"`
   echo "${ACTION_TIME} Copy ${FN1} to ${DPATH}/${FN1} Complete"
done