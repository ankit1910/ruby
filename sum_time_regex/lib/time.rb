class Time
  def add_time(time2)
    add_factor = (time2.hour * 3600) + (time2.min * 60) + time2.sec
    result_time = self + add_factor
    self.day == result_time.day ? day = 0 : day = 1
    printf("%2d days & %02d : %02d : %02d\n", day, result_time.hour, result_time.min, result_time.sec)    
  end
end