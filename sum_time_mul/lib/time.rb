class Time
  def add_time(time_array)
    result_time = self
    size = time_array.size
    size.times do |i|
      add_factor = (time_array[i].hour * 3600) + (time_array[i].min * 60) + time_array[i].sec
      result_time = result_time + add_factor
    end
    day = result_time.day - self.day
    printf("%02d days & %02d : %02d : %02d\n",day, result_time.hour, result_time.min, result_time.sec)    
  end
end