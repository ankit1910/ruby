class Hotel
  attr_accessor :name, :rate, :tax, :seasons
  def initialize(name, rate, tax, seasonal_rates)
    @name = name
    @rate = rate
    @tax = tax
    @seasons = get_seasons(seasonal_rates)
  end

  def get_seasons(seasonal_rates)
    seasons_list = []
    if seasonal_rates
      seasonal_rates.each do |season|
        season.each_key do |key|
          name = key
          start_date = season[key]["start"]
          end_date = season[key]["end"]
          rate = season[key]["rate"].to_i
          seasons_list << Season.new(name, start_date, end_date, rate)
        end
      end
    end
    seasons_list       
  end
    
  def display
    puts "*" * 60
    instance_variables.each do |var|
        title = var.to_s.gsub('@', '').capitalize
        value = instance_variable_get(var)
        if value.is_a? Array
          puts " #{ title } : "
          value.each do |season|
            puts "-" * 40
            season.instance_variables.each do |var|
              season_title = var.to_s.gsub('@', '').capitalize
              season_value = season.instance_variable_get(var)
              puts "  #{ season_title } : #{ season_value }"
            end
            puts "-" * 40
          end
        else
          puts " #{ title } : #{ value }"
        end
      end   
    puts "*" * 60
  end
end