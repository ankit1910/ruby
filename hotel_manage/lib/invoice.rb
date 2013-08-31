class Invoice
  attr_accessor :hotel, :check_in, :check_out, :seasonal_rent, :total_rent 
  def initialize (hotel, check_in, check_out)
    @hotel = hotel
    @check_in = check_in
    @check_out = check_out
    @seasonal_rent = Hash.new { |hash, key| hash[key] = [0, 0] }
    @total_rent = 0
  end

  def calculate_rent
    total_days = (check_out - check_in).to_i
    if hotel.seasonal_rates
      hotel.seasonal_rates.each do |season|
        season.each_key do |key|
          for date in (check_in...check_out)
            start_date = Date.parse(season[key]["start"] + "-#{ date.year }")
            end_date = Date.parse(season[key]["end"] + "-#{ date.year }")
            start_date <<= 12 if end_date < start_date
            range = Range.new(start_date, end_date) 
            if range.include?date 
              seasonal_rent[key][0] += 1
              seasonal_rent[key][1] += season[key]["rate"].to_i
              total_days -= 1
              @total_rent += season[key]["rate"].to_i
            end
          end
        end
      end
      normal_day_rent = total_days * hotel.rate.to_i
      seasonal_rent["Normal Days"] = [total_days, normal_day_rent]
      @total_rent += normal_day_rent
    else
      @total_rent = total_days * hotel.rate
    end
  end

  def display_invoice
    puts "*" * 60
    puts "Hotel Name : #{ hotel.name }"
    seasonal_rent.each_key do |key|
      puts "#{ seasonal_rent[key][0] } Days for #{ key } Rent : #{ seasonal_rent[key][1]}"
    end
    puts "Total Rent = #{total_rent}"
  end 
end
