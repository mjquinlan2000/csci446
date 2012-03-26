#!/bin/bash
#Converts ruby html into haml

find -name '*erb' | xargs ruby -e 'ARGV.each { |i| puts "html2haml -e #{i} #{i.sub(/erb$/, "haml")}"}' | bash
