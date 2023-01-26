#!bin/bash
# check if the current directory contains file which starts with t has length five and format .txt and print the result

# for file in *
# do
#     if [[ $file == t????.txt ]]
#     then
#         echo $file
#     fi
# done


# create files with all possible three digit number combination
mkdir testdir
cd testdir/


# create files with names file1 file2 ... file100
# touch file{1..1000}.txt

# echo "ls only ones which contain 2 digits\n"
# ls file[0-9][0-9].txt

# echo "ls only ones which contain 9\n"
# ls *9*.txt

# echo "ls only ones which has 3 digits, but not 1,4 or 7\n"
# ls *[0-9][0-9][0-9]*.txt | grep -v [147]

# echo "mkdir with names like dir1, dir2 ... dir100"
# mkdir dir{1..100}

# iterate through each of these directories and create files with names file1 file2 ... file100
# for dir in dir*
# do
#     cd $dir
#     touch file{1..100}.txt
#     ls file[0-9][0-9].txt
#     ls *9*.txt
#     ls *[0-9][0-9][0-9]*.txt | grep -v [147]
#     cd ..
# done

# we have these 4 characters "A" "\" "$" "4" and we want to create files with all possible combinations of these characters
# touch {A,\\,$,4}{A,\\,$,4}{A,\\,$,4}{A,\\,$,4}

# echo " ls only ones without $"
# ls *[^$]*

# echo "ls only ones which have backslash at 3rd position"
# ls ??\\?

# create files with all possible 3 digit combinations, with and without text extension
# touch {0..9}{0..9}{0..9}{.txt,}

# create file.txt, with txt extensions all possible uppercases and lowercases, using {}
# touch file.{t,T}{x,X}{t,T}

