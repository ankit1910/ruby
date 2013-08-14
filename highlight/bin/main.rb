require_relative '../lib/count_no_occur.rb'
puts "enter string"
input_string = gets.chomp
print "word to be matched"
search_word = gets.chomp

obj = CountNoOccur.new
obj.count_no_of_occurence(input_string,search_word)