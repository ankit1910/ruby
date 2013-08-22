class String
  def highlight_and_count_word(word)
    count = 0
    output = self.gsub(/#{ word }/i){ |match| count += 1 ;"(#{match})" }
    return output, count 
  end
end