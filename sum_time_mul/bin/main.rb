require_relative '../lib/time.rb'
flag = 0
input = '("11:23:07","22:53:45","0:23:23","23:45:56")'
regex = /([0-2]?[0-9]):([0-6]?[0-9]):([0-6]?[0-9])/ 
time = input.split(',')
time.map! do |ele|
  if ele =~ regex
    ele = Time.new(0,1,1,$1.to_i,$2.to_i,$3.to_i)
  else
    puts "wrong format"
    flag = 1
    break
  end
end
time[0].add_time(time[1 .. -1]) if time.size > 1 && flag != 1
