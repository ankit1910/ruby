module ConvertToTime
  def self.to_time(time,regex)
    time =~ regex ? Time.new(0, 1, 1, $1.to_i, $2.to_i, $3.to_i) : nil
  end  
end