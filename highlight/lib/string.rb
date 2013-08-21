class String
  def highlight_word(word)
    count = 0
    k = self.gsub!(/#{word}/i){ |match| count += 1 ;"(#{match})" }
    return self, count 
  end
end