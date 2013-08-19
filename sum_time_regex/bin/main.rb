require_relative '../lib/convert_to_time.rb'
require_relative '../lib/time.rb'
puts "enter time 1"
time1 = gets.chomp
puts "enter time 2"
time2 = gets.chomp
regex = /^([0-2]?[0-9]):([0-6]?[0-9]):([0-6]?[0-9])$/
time1 = ConvertToTime.to_time(time1,regex)
time2 = ConvertToTime.to_time(time2,regex)
(time1 != nil and time2 != nil) == true ? time1.add_time(time2) : (p "wrong format of time")
