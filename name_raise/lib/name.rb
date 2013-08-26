class Name
  def initialize (first_name, last_name)
    raise FirstNameEmptyError if first_name.empty?
    raise FirstNameNotCapitalizeError if (first_name != first_name.capitalize)
    raise LastNameEmptyError if last_name.empty?
    @first_name = first_name
    @last_name = last_name
  end
  def to_s
    "Name : #{ @first_name } #{ @last_name }"
  end
end
