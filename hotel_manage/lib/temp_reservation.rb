class TempReservation
  attr_accessor :hotel, :duration, :timeline
  def initialize(hotel, duration)
    @hotel = hotel
    @duration = duration
    @timeline = get_timeline
  end
  
  def display_rent
    timeline.sort!
    timeline.each do |season|
      puts "-" * 60
      puts "Occassion : #{ season.name }"
      puts "Rate      : #{ season.rate }"
      puts "Duration  : #{ season.start_date } TO #{ season.end_date }"
      puts "Days      : #{ season.no_of_days }"
      puts "Rent      : #{ season.rent }"
      puts "-" * 60
    end      
  end

  def total_rent
    total_rent = 0
    timeline.each do |season|
      total_rent += season.rent
    end
    total_rent
  end

  private

  def get_timeline
    special_timeline = []
    seasons = hotel.seasons
    check_in = duration.check_in
    check_out = duration.check_out
    duration_range = (check_in..check_out)
    years = (check_in.year..(check_out.year + 1)).to_a
    for year in years
      seasons.each do |season|
        season_start = Date.parse(season.start_date + "-#{ year }")
        season_end = Date.parse(season.end_date + "-#{ year }")
        season_start <<= 12 if season_end < season_start
        season_range = (season_start..season_end)
        intersection = duration_range.grep season_range
        if intersection.any?
          special_timeline << BillableSeasons.new(season.name, season.rate, intersection.count, intersection.first, intersection.last)
        end
      end
    end
    special_timeline + get_normal_timeline(special_timeline)
  end

  def get_normal_timeline(timeline)
    normal_timeline = []
    check_in = duration.check_in
    check_out = duration.check_out
    while check_in <= check_out
      timeline.each do |ele|
        start_date = check_in
        end_date = ele.start_date - 1
        days = (start_date..end_date).to_a.count
        if check_in < ele.start_date
          normal_timeline << BillableSeasons.new("Normal day", hotel.rate, days, start_date, end_date)
        end
        check_in = ele.end_date + 1
      end
      if (check_in < check_out)
        normal_timeline << BillableSeasons.new("Normal day", hotel.rate, (check_in..check_out).to_a.count, check_in, check_out)
        check_in = check_out + 1
      end
    end
    normal_timeline
  end
end
