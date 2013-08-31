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
    instance_variables.each do |var|
        title = var.to_s.gsub('@', '').capitalize
        value = instance_variable_get(var)
      if value != @seasonal_rates
        puts " #{ title } : #{ value }"
      elsif value
        puts "#{ title } :"
        value.each do |season|
          season.each_key do |key|
            puts "#{ key } : #{ season[key]["rate"] } (Start : #{ season[key]["start"] } , End : #{ season[key]["end"] })"
          end
        end
      end
    end
    puts "*" * 60
  end
end