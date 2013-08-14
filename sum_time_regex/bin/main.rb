require_relative '../lib/time.rb'
puts "enter time 1"
time1 = gets
puts "enter time 2"
time2 = gets
regex = /^([0-2]?[0-9]):([0-6]?[0-9]):([0-6]?[0-9])$/ 
time1 =~ regex ? time1 = Time.new(0,1,1,$1.to_i,$2.to_i,$3.to_i) : time1 = nil
time2 =~ regex ? time2 = Time.new(0,1,1,$1.to_i,$2.to_i,$3.to_i) : time2 = nil
time1.add_time(time2) if time1 != nil and time2 != nil


