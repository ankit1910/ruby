require 'time'
module TimeAdd
  def self.add_time(*times)
    begin
      result_time = Time.new("00 : 00 : 00")
      hours = 0
      times.each do |time|
        time = Time.parse(time)
        add_factor = (time.hour * 3600) + (time.min * 60) + time.sec
        hours += time.hour
        result_time += add_factor
      end
      days = hours / 24
      printf("%02d days & %02d : %02d : %02d\n",days, result_time.hour, result_time.min, result_time.sec)
    rescue ArgumentError
      puts "wrong format of time"
    end
        
  end
end