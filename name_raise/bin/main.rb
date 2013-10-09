require_relative '../lib/name.rb'
require_relative '../lib/exception.rb'
begin
  # strip function checking for blank spaces
  puts "enter first name"
  first_name = gets.chomp.strip
  puts "enter last name"
  last_name = gets.chomp.strip
  obj = Name.new(first_name, last_name)
  puts obj
rescue StandardError
  puts $!
end
