require_relative '../lib/string.rb'
print "enter string : "
input_string = gets.chomp
print "word that to be highlighted : "
word_to_highlight = gets.chomp
output = input_string.highlight_and_count_word(word_to_highlight)
puts "#{output[0]} \nTotal Occurences found: #{output[1]}"