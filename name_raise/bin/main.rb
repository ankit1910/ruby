require_relative '../lib/name.rb'
require_relative '../lib/name_errors.rb'
begin
  puts "enter first name"
  first_name = gets.chomp
  raise NameErrors, "First name can not be empty" if first_name.empty?
  raise NameErrors,"First letter of first name is not capital" if (first_name != first_name.capitalize)
  puts "enter last name"
  last_name = gets.chomp
  raise NameErrors, "Last name can not be empty" if last_name.empty?
  obj = Name.new(first_name, last_name)
  p obj
rescue NameErrors => e
  p e.message     
end