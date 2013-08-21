class Invoice
  attr_reader :name, :seasonal_rates, :rate, :tax
  def initialize (name, rate, seasonal_rates, tax)
    @name = name
    @rate = rate
    @seasonal_rates = seasonal_rates
    @tax = tax
  end

  def calculate_rent(check_in, check_out, hotel_name)
    seasonal_hash = Hash.new { |hash, key| hash[key] = 0 }
    seasonal_amount = 0
    total_days = (check_out - check_in).to_i
    puts "----------------------------------------------"
    puts "HOTEL : #{ hotel_name }"
    if seasonal_rates
      seasonal_rates.each do |season|
        season.each_key do |key|
          for date in (check_in...check_out)
            start_date = Date.parse(season[key]["start"] + "-#{date.year}")
            end_date = Date.parse(season[key]["end"] + "-#{date.year}")
            start_date <<= 12 if end_date < start_date 
            if date >= start_date && date <= end_date
              seasonal_hash[key] += 1
              total_days -= 1
            end
          end
          puts "Days for #{ key } : #{ seasonal_hash[key] } \nAmount for this Period : #{ seasonal_hash[key] * season[key]["rate"].to_i }"
          puts ""
          seasonal_amount += seasonal_hash[key] * season[key]["rate"].to_i
        end
      end
      normal_day_rent = total_days * rate.to_i
      puts "Normal days : #{ total_days } \nAmount for this period : #{ normal_day_rent }"
      puts ""
      puts "Total rent : #{ seasonal_amount + normal_day_rent }" 
    else
      puts "Total Rent : #{ total_days * rate.to_i } "
    end
    puts "----------------------------------------------"
  end
end
