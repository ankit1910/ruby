class CountNoOccur
  def count_no_of_occurence(input_string,search_word)
  output_string = input_string.gsub(/#{search_word}/i,"(#{search_word})")
  count = output_string.scan(/#{search_word}/i).size
  puts "#{output_string} \nTotal Occurences found: #{count}"
  end
end