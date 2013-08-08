while true
  puts "enter string"
  line = gets
  break if line =~ /[qQ]/
  first, last = 0, line.length-2
  line.each_char {|c| exit if c =~ /[qQ]/}
  while first < last
    if line[first] != line[last]
      puts "not palindrome"
      break
    end
    first += 1
    last -= 1
  end
  puts "palindrome" if not(first < last)
end