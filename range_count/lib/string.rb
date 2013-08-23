class String
  def diff_char_occurence
    hash = Hash.new(0)
    digit, upcase, downcase = ('0'..'9'), ('A'..'Z'), ('a'..'z')
    self.each_char do |char|
      case char
        when digit
          hash["Digits"] += 1
        when upcase 
          hash["Upcase"] += 1
        when downcase 
          hash["Downcase"] += 1
        else 
          hash["Special"] += 1
      end
    end
    hash
  end
end

