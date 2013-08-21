require 'date'
require_relative '../lib/get_json_data.rb'
require_relative '../lib/invoice.rb'
require_relative '../lib/show_hotel_details.rb'

hotels_detail = GetJsonData.get_json_data('data.json')
ShowHotelDetails.show_details(hotels_detail)
begin
  puts "Insert check In Date"
  check_in = Date.parse(gets.chomp)
  puts "Insert check Out Date"
  check_out = Date.parse(gets.chomp)
  hotels_detail.each do |hotel|
    name = hotel["Hotel_name"]
    rate = hotel["rate"]
    tax = hotel["tax"] ? hotel["tax"] : nil
    seasonal_rates = hotel["seasonal_rates"] ? hotel["seasonal_rates"] : nil
    bill = Invoice.new(name, rate, seasonal_rates, tax)
    bill.calculate_rent(check_in, check_out, name) if check_out > check_in
  end
rescue ArgumentError
  puts "wrong date format"
end
