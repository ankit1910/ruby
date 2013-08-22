require 'time'
module TimeAdd
  def self.add_time(*times)
    begin
      result_time = Time.parse("00 : 00 : 00")
      start_date = Date.parse(result_time.to_s)
      times.each do |time|
        time = Time.parse(time)
        add_factor = (time.hour * 3600) + (time.min * 60) + time.sec
        result_time += add_factor
      end
      end_date = Date.parse(result_time.to_s)
      days = (end_date - start_date).to_i
      printf("%02d days & %02d : %02d : %02d\n",days, result_time.hour, result_time.min, result_time.sec)
    rescue ArgumentError
      puts "wrong format of time"
    end        
  end
end