class HotelList
  attr_accessor :hotels
  def initialize
    @hotels = create_hotel_list
  end

  def create_hotel_list
    hotels_detail = GetJsonData.read_json_file('data.json')
    hotel_list = []
     hotels_detail.each do |hotel|
      name = hotel["Hotel_name"]
      rate = hotel["rate"].to_i
      tax = hotel["tax"].to_i
      seasonal_rates = hotel["seasonal_rates"]
      hotel_list << Hotel.new(name, rate, tax, seasonal_rates)
    end
    hotel_list
  end

  def show_price_catalogue
    hotels.each do |hotel|
      hotel.display
    end
  end 
end
