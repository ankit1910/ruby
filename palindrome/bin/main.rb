require_relative '../lib/string.rb'
while true
  puts "Enter string you want to check for palindrome"
  input_line = gets.chomp
  break if input_line =~ /[q]/i
  puts "'#{input_line}' : is " + (input_line.palindrome? ? "palindrome" : "not palindrome")  
end
