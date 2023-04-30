#!/bin/bash

filesdir=$1
searchstr=$2
 
if [ $# -ne 2 ];
        then
                echo "Proper arguments are not supplied"
                return 1
fi
 
if [ ! -d $1 ]
        then
                echo "Not a valid directory"
                return 1
fi
 
X=$( find $filesdir -type f | wc -l )
Y=$( grep -r $searchstr $filesdir | wc -l )
  
echo "The number of files are $X and the number of matching lines are $Y"  

