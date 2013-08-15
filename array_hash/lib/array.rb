class Array
  def to_hash
    output_hash = Hash.new
    for item in self
      len = item.to_s.size
      output_hash[len] ||= []
      output_hash[len] << item
    end
    p output_hash
  end
end