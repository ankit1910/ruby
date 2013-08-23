require_relative '../lib/string.rb'
puts "enter string"
output_hash = gets.gsub(/\s/, '').diff_char_occurence
puts "The input string contains :"
output_hash.each_key do |key|
  puts "#{ output_hash[key] } #{ key } characters"
end
