class String
  def count_no_of_occurence(search_word)
    self.gsub!(/#{search_word}/i,"(#{search_word})")
    count = self.scan(/#{search_word}/i).size
    return self, count 
  end
end