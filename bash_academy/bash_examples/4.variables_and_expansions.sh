#!/usr/bin/env bash

# Output example
ls

# Output all
ls *

# Output all .txt files
ls *.txt

# Output files that start with 0
# ? - any singe character
# ' ' - blank space literal
# * - everything
# .ogg - end in ogg
ls 0?' '*.ogg

# Outputs all starting with any char from range (0 .. 9)
ls [0-9]*

# Character classes make the whole process better readable
ls [[:digit:]][[:digit:]]*

#Enable extended Globs [+(at least one), *(however many of), ?(maybe one of), @(only one of), !(none of)] 

shopt  -s extglob

#Filename starts with one or more digits
ls +([:digit:])' ' *.ogg

#Shell variables 
name=peter
echo "My name is $name."

# !!!NoSpacesAllowedWhenUsingThe=OperatorForAssigning!!!
var="$(echo "Here i can space")"
echo "$var" 

# Expansion operations 
name=Jeffrey surname=Dahmer
echo "$name $surnames condition was schitzophrenia."
echo "$name ${surname}'s condition was schitzophrenia."
echo "Linux home folder Scheme ${HOME//sa6o/<usr>}"

birthday=20.12.1996
birthyear="${birthday#*12.}" # "#" - is used to say from the start to <the given delimeter>
birthday_this_year="${birthday%.*}" # '%' - is used to say from <the given delimeter> to the end
echo "My birthday this year is on the ${birthday_this_year}"
echo "I was born in ${birthyear}"

echo "PATH consists of these Directories: ${PATH//:/ & }"

# Diffrent examples with expansion
url='https://guide.bash.academy/variables.html'
echo "unmodified : ${url}"
echo "1:${url#*/}"
echo "2:${url##*/}"
echo "3:${url%/*}"
echo "4:${url%%/*}"
echo "5:${url/./, }"
echo "6:${url//./, }"
echo "7:${url/#*:/http:}"
echo "8:${url/%.html/.jpg}"
echo "9:${#url}"
echo "10:${url:7}"
echo "11:${url^^[ht]}"

# url : 'https://guide.bash.academy/variables.html'
# 1:/guide.bash.academy/variables.html
# 2:variables.html
# 3:https://guide.bash.academy
# 4:https:
# 5:https://guide, bash.academy/variables.html
# 6:https://guide, bash, academy/variables, html
# 7:http://guide.bash.academy/variables.html
# 8:https://guide.bash.academy/variables.jpg
# 9:41
# 10:/guide.bash.academy/variables.html
# 11:HTTps://guide.basH.academy/variables.HTml
 


