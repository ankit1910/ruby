class String
  def count_no_of_occurence(search_word)
  	count = 0
    k = self.gsub!(/#{search_word}/i){ |match| count += 1 ;"(#{match})" }
    return self, count 
  end
end