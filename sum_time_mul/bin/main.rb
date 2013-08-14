require_relative '../lib/time.rb'
time, count = [], 0
regex = /^([0-2]?[0-9]):([0-6]?[0-9]):([0-6]?[0-9])$/ 
puts "hit q/Q to exit"
while true
  puts "enter time #{count+1}"
  input = gets
  if input =~ /[^q]/i and input =~ regex
    time[count] = Time.new(0,1,1,$1.to_i,$2.to_i,$3.to_i)
  else
    break
  end
  count += 1
end
time[0].add_time(time[1 .. -1]) if time.size > 1
