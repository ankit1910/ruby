class Enquiry
  attr_accessor :check_in, :check_out
  
  def initialize(check_in, check_out)
    @check_in = get_date(check_in)
    @check_out = get_date(check_out)
  end

  def valid?
    check_out > check_in
  end
  
  private
  def get_date(date)
    Date.parse(date)
  end
end
