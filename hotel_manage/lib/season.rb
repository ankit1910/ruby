class Season
  attr_accessor :name, :start_date, :end_date, :rate
  def initialize(name, start_date, end_date, rate)
    @name = name
    @start_date = start_date
    @end_date = end_date
    @rate = rate
  end
end