class Name
  attr_reader :first_name,:last_name
  def initialize (first_name, last_name)
    raise NameErrors, "First name can not be empty" if first_name.empty?
    raise NameErrors,"First letter of first name is not capital" if (first_name != first_name.capitalize)
    @first_name = first_name
    raise NameErrors, "Last name can not be empty" if last_name.empty?
    @last_name = last_name
  end
  def to_s
    "Name : #{first_name} #{last_name}"
  end
end
