puts "enter the string: "
character_occurence= Hash.new(0)
line = gets
line.each_char {|i| character_occurence[i] += 1  if i.downcase =~ /[a-z]/}
puts character_occurence