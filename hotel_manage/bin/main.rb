require 'date'
require_relative '../lib/get_json_data.rb'
require_relative '../lib/hotel.rb'
require_relative '../lib/enquiry.rb'
require_relative '../lib/hotel_list.rb'
require_relative '../lib/season.rb'
require_relative '../lib/invoice.rb'
require_relative '../lib/temp_reservation.rb'
require_relative '../lib/billable_seasons.rb'

hotel_list = HotelList.new
hotels = hotel_list.hotels
hotel_list.show_price_catalogue

puts "Insert check In Date(dd-mm-yyyy)"
check_in = gets.chomp
puts "Insert check Out Date(dd-mm-yyyy)"
check_out = gets.chomp
duration = Enquiry.new(check_in, check_out)

if duration.valid?
  hotels.each do |hotel|
    Invoice.new(hotel).display(duration)
  end
else
  puts "checkout date must be after checkin date "
end
