class Invoice
  attr_accessor :hotel, :total_rent
  def initialize (hotel)
    @hotel = hotel
    @total_rent = 0
  end

  def display(duration)
    puts "INVOICE FOR : '#{ hotel.name.upcase }' For Duration : #{ duration.check_in } TO #{ duration.check_out }"
    puts "#" * 60
    reservation = TempReservation.new(hotel, duration)
    reservation.display_rent
    puts "#" * 60
    @total_rent = reservation.total_rent
    puts "TOTAL RENT : #{ total_rent }"
    puts "#" * 60
  end
end
