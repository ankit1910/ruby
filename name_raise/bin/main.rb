require_relative '../lib/name.rb'
require_relative '../lib/exception.rb'
begin
  puts "enter first name"
  first_name = gets.chomp
  puts "enter last name"
  last_name = gets.chomp
  obj = Name.new(first_name, last_name)
  puts obj
rescue StandardError
  puts $!
end
