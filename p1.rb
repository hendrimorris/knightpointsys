#!/usr/bin/env ruby
#Prints fourth word from the 3rd line of specified txtfile

#create file handle
txtfile = 'p1-file.txt'

#reads each line as elements into array f
f = File.readlines(txtfile)

#set new string linethree with
linethree = f[2]

#splits string linethree at spaces into new array linethreelist
linethreelist = linethree.split(' ')

#prints fourth word from line three
puts linethreelist[3]
