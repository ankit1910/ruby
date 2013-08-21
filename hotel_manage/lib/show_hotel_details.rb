module ShowHotelDetails
  def self.show_details(hotels_detail)
    puts "list of hotel"
    hotels_detail.each do |hotel|
      puts "--------------------------------------------------"
      puts "Hotel Name : #{hotel["Hotel_name"]}"
      puts "Tax : #{hotel["tax"]}" if hotel["tax"]
      puts "Rate : #{hotel["rate"]}"
      if hotel["seasonal_rates"]
        puts "Seasonal Rates"
        hotel["seasonal_rates"].each do |season|
          season.each_key {|key| puts "#{key} : #{season[key]["rate"]} (Start : #{season[key]["start"]} , End : #{season[key]["end"]})"}
        end
      end
      puts "--------------------------------------------------"
    end
  end
end
