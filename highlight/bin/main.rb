require_relative '../lib/string.rb'
print "enter string : "
input_string = gets.chomp
print "word that to be highlighted : "
search_word = gets.chomp
output = input_string.count_no_of_occurence(search_word)
puts "#{output[0]} \nTotal Occurences found: #{output[1]}"