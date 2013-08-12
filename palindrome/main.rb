while true
  puts "enter string"
  input_line = gets.chomp
  break if input_line =~ /[q]/i
  puts input_line == input_line.reverse ? "palindrome" : "not palindrome"
end
