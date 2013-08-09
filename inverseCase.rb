class Inverse
	def initialize(string)
    @string = string
  end
  def to_s
    @string.swapcase
  end
end
input = gets
var = Inverse.new(input)
puts var