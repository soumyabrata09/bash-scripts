#!/bin/bash

#Explanation
# time: This command measures the time taken to execute the dd command.
# dd: This is a command-line utility for Unix and Unix-like operating systems used to convert and copy files.
# if=/dev/zero: This specifies the input file. /dev/zero is a special file that provides as many null characters (zeroes) as are read from it.
# bs=1024k: This sets the block size to 1024 kilobytes (1 megabyte). It determines the amount of data read and written at a time.
# of=tstfile: This specifies the output file. tstfile is the name of the file that will be created and written to.
# count=1024: This specifies the number of blocks to be copied. Here, 1024 blocks of 1 megabyte each will be written, resulting in a 1GB file.

#Below code will write a data `tstfile` in the current directory
#time dd if=/dev/zero bs=1024k of=tstfile count=1024

#Below code will read the created `tstfile` from the current directory
#time dd if=tstfile bs=1024k of=/dev/null count=1024

(echo -e "Write Operation\n" && 
time dd if=/dev/zero bs=1024k of=tstfile count=1024 && 
echo -e "\n------------------------\n" && 
echo -e "Read operation\n"
time dd if=tstfile bs=1024k of=/dev/null count=1024) 2>&1 | tee ssd_speed.txt

#remove the `tstfile` after the write and read operation
rm ./tstfile
echo "temporary 'tstfile' deleted"
cupsfilter ssd_speed.txt > ssd_speed.pdf
echo "SSD speed report generated in below location"
pwd
rm ssd_speed.txt
