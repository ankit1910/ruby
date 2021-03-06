class Array
  def to_hash
    output_hash = self.group_by{|ele| (ele.is_a? Enumerable) ? ele.size : ele.to_s.length}
    output_hash.inject(Hash.new { |hash, key| hash[key] =[]}) do |hash, item|
      len = item[0]
      len.even? ? hash["even"] << item[1] : hash["odd"] << item[1]
      hash
    end
  end
end