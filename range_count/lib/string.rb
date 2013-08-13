class String
  def count_diff_char
    hash = Hash.new(0)
    self.each_char do |char|
      case char
        when ('0'..'9') then hash["digit"] += 1
        when ('A'..'Z') then hash["upcase"] += 1
        when ('a'..'z') then hash["downcase"] += 1
        else hash["special symbol"] += 1
      end
    end
    hash
  end
end
