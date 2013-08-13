class String
  def reverse_sentence
    self.split(/\s/).reverse.join(" ")
  end
end
