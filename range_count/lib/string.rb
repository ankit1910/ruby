class String
  def count_diff_char
    hash = Hash.new(0)
    digit, upcase, downcase = ('0'..'9'), ('A'..'Z'), ('a'..'z')
    self.each_char do |char|
      case char
        when digit
          hash["digit"] += 1
        when upcase 
          hash["upcase"] += 1
        when downcase 
          hash["downcase"] += 1
        else 
          hash["special symbol"] += 1
      end
    end
    hash
  end
end
