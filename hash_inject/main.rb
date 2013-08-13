class Array
  def to_hash
     hash = self.group_by{|ele| ele.to_s.length}
     hash.inject({}) do |hash, item|
      len = item[0]
      if len.even?
        hash["even"] ||= []
        hash["even"] << item[1]
      else
        hash["odd"] ||= []
        hash["odd"] << item[1]
      end
      hash
    end
  end
end

p ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ',"as"].to_hash
