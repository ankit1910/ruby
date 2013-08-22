class Name
  attr_reader :first_name,:last_name
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  def to_s
    "Name : #{first_name} #{last_name}"
  end
end
