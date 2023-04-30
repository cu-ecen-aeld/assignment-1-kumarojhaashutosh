#!/bin/bash

writefile=$1
writestr=$2
 
if [ $# -ne 2 ];
        then
                echo "Proper arguments are not supplied"
                return 1
fi
 
dir=$( dirname $1 ) 

mkdir -p $dir
echo $writestr > $writefile






 





 



