#!/usr/bin/env bash

#Expansion
mkdir demo
echo "hello" >> myfile.txt
cd demo

#without expansion
rm -v myfile.txt

#with expansion
rm -v *

#Diffrent expansion types
cd ~/Downloads
#list whole folder
ls

#gives us the same output but Enumarates everything in the target directory
ls *

#list all files that have the .txt extansion at the end
ls *.txt

#list all the files mathing the pattern
#[0 - "first char is 0"]
#[? - "any single character"]
#[' ' - "literal empty space"]
#["*.flac" - "matches to any file that ends in .flac"]
ls 0?' '*.flac

#matches to any file starting with a digit from 0 to 9
ls [0-9]*

#these are the so called character classes

#the command here will match to any file that starts with 2 digits
$res=$(ls [[:digit:]][[:digit:]]*)

#globs never check inside subfolders unless explycitly told told

#enuamrate the whole Downloads directory
ls ~/Downloads/*.txt

#searches in all folders of home for a hello.txt file
ls ~/*/hello.txt

#Bonus globs
#enable using "shopt -s extglob"
#[+("pattern") - matches when atleast one of the patterns in the list match]
#[*("pattern") - matches whatever happens]
#[?("pattern") - matches whenever the pattern appears once or not at all]
#[@("pattern") - matches whenever the pattern appears once]
#[!("pattern") - matches whenever the pattern doesnt appear]
ls +([[:digit:]])*

#Tilde expansion
#special case of expansion always amounts to the users home
cd ~

#when given a username, gives us the given users home directory back
cd ~root

#Command substitution
echo "$(ls ~)"
#never forget the "" around the $()

#Shell variables
name="Hristov"
echo "Hello Mister $name"

#Assignment
#name = hello => Error

#Quotes for spaces
item='     im in spaaaaace      '

#can be used with value expansion
res="our home is full with the following folders : $(ls ~)"

#Parameter expansion
name=patriot country=murica

echo "$country is full of $names" #=> murica is full of
#here we make use of the {} to surround the name completely
#and tell bash where it stops
echo "${country} is full of ${name}s" #=> murica is full of patriots

#[%[pattern] - removes the shortest string that matches, if it is at the end]
#[%%[pattern] - removes the longest string that matches, if it is at the end]
#[#[pattern] - removes the shortest string that matches,if it is at the start]
#[##[pattern] - removes the longest string that matches,if it is at the start]

name=sasho time=19.35
echo "${name} current record is ${time%.*} second and ${time#*.} hundredths"
#=>sasho current record is 19 second and 35 hundredths

#[/[pattern]/[new_pattern] - replace pattern with the new_patern only once]
#[//[pattern]/[new_pattern] - replace pattern with the new_patern thruought]

echo "PATH currently contains : ${PATH//:/, }"
#=>PATH currently contains :
#/home/sa6o/bin, /sbin, /usr/bin,
#/usr/sbin, /usr/local/bin, /usr/local/sbin,
#/opt/bin, /usr/bin/core_perl, /usr/games/bin,
#/usr/bin/ruby, /usr/bin/npm, /usr/bin/node,
#/home/sa6o/.gem/ruby/2.7.0/bin, /usr/bin/python,


