#!/bin/bash
#by Manuel Verhoeven
#student number: 10480891


#set the working directory to be that of the entered arguement in shell.
cd $1

#define variables.
#for testing purposes I first found the total number of files and directories.
total_dir=$(find . -type d | wc -l)  #set total_dir variable to equal the total number of directories(-type d) found in working directory, using the word count (wc) of the list (-l) results.
total_file=$(find . -type f | wc -l) #set total_file variable to equal the total number of files (-type f) found in working directory, using the word count (wc) of the list (-l) results.
empty_dir=$(find . -type d  -empty | wc -l) # set empty_dir to equal all directories (-type d) found in working directory that are also empty (-empty) using the word count of the list (-l_) results.
non_empty_dir=$(find . -type d -size +0 | wc -l) # set non_empty_dir to equal all directories (-type d) found in working directory that are not empty(-size +0) using the word count (wc) of the list (-l) results.
empty_file=$(find . -type f -empty | wc -l) # set empty_fileto equal all files (-type f) found in working directory that are also empty (-empty) using the word count (wc) of the list (-l_) results.
non_empty_file=$(find . -type f ! -size 0 | wc -l) # set non_empty-file to equal all files (-type f) found in working directory that are not empty (! -size 0) using the word count (wc) of the list (-l) results.



echo "Within $1 there are:" #print message telling user what the working directory is they entered as an arguement in shell.
# echo "$total_dir directories are pressent including the directory $1"
# echo "$total_file  files contained in the directory"
echo "$non_empty_file files that contain data" #print non_empty_file variable
echo "$empty_file files are empty" #print empty_file variable
echo "$empty_dir directories that are empty" #print empty_dir variable
echo "$non_empty_dir non-empty directories" #print non_empty_dir variable

exit 0