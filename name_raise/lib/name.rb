class Name
  def initialize (first_name, last_name)
    if valid?(first_name)
      raise FirstNameEmptyError, "first name can not be empty"
    elsif valid?(last_name)
      raise LastNameEmptyError, "last name can not be empty"
    elsif first_name != first_name.capitalize
      raise FirstNameNotCapitalizeError, "first name should be capitalize"
    else
      @first_name = first_name
      @last_name = last_name
    end
  end

  def to_s
    "Name : #{ @first_name } #{ @last_name }"
  end

  private

  def valid?(name)
    if !name.nil?
      name.strip.empty?
    else
      false
    end
  end

end
