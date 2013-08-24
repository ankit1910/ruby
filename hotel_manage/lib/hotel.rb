class Hotel
  attr_accessor :name, :rate, :tax, :seasonal_rates
  def initialize(name, tax, rate, seasonal_rates)
    @name = name
    @tax = tax
    @rate = rate
    @seasonal_rates = seasonal_rates
  end

  def show_details
    puts "*" * 60
    puts "Hotel Name : #{ name }"
    puts "Tax : #{ tax }%" if tax
    puts "Rate : #{ rate }"
    if seasonal_rates
      puts "Seasonal Rates"
      seasonal_rates.each do |season|
        season.each_key {|key| puts "#{key} : #{season[key]["rate"]} (Start : #{season[key]["start"]} , End : #{season[key]["end"]})"}
      end
    end
    puts "*" * 60
  end
end