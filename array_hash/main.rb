class Array
  def to_hash
    ret_hash = Hash.new
    for item in self
      len = item.to_s.size
      ret_hash[len] ||= []
      ret_hash[len] << item
    end
    p ret_hash
  end
end
['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'].to_hash
