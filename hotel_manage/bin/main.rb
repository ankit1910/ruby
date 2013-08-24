require 'date'
require_relative '../lib/get_json_data.rb'
require_relative '../lib/hotel.rb'
require_relative '../lib/invoice.rb'
hotel_list = []
hotels_detail = GetJsonData.read_json_file('data.json')
hotels_detail.each do |hotel|
  name = hotel["Hotel_name"]
  tax = hotel["tax"].to_i
  rate = hotel["rate"].to_i
  seasonal_rates = hotel["seasonal_rates"]
  hotel_list << Hotel.new(name, tax, rate, seasonal_rates)
end
hotel_list.each do |hotel|
  hotel.show_details
end

puts "Insert check In Date"
check_in = Date.parse(gets.chomp)
puts "Insert check Out Date"
check_out = Date.parse(gets.chomp)

hotel_list.each do |hotel|
  invoice = Invoice.new(hotel, check_in, check_out)
  invoice.calculate_rent
  invoice.display_invoice
end
