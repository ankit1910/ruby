class BillableSeasons
  include Comparable
  attr_accessor :name, :rate, :no_of_days, :start_date, :end_date, :rent
  def initialize(name, rate, no_of_days, start_date, end_date)
    @name = name
    @rate = rate
    @no_of_days = no_of_days
    @start_date = start_date
    @end_date = end_date
    @rent = calculate_rent
  end

  def <=>(other)
    self.start_date <=> other.start_date
  end

  private
  def calculate_rent
    no_of_days * rate
  end
end