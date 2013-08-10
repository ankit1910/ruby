class Array
  def to_hash
    out = Hash.new
    for i in 0...size
      len = self[i].to_s.length
      out[len] ||= []
      out[len] << self[i]
    end
    return out
  end
end
puts ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'].to_hash