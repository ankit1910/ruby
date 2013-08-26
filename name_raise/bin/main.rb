require_relative '../lib/name.rb'
require_relative '../lib/first_name_empty_error.rb'
require_relative '../lib/last_name_empty_error.rb'
require_relative '../lib/first_name_not_capitalize_error.rb'
begin
  puts "enter first name"
  first_name = gets.chomp
  puts "enter last name"
  last_name = gets.chomp
  obj = Name.new(first_name, last_name)
  puts obj
rescue FirstNameEmptyError, FirstNameNotCapitalizeError, LastNameEmptyError => e
  puts e.message
end
