class Name
  def initialize (first_name, last_name)
    if !first_name || first_name.empty?
      raise FirstNameEmptyError, "first name can not be empty"
    elsif !last_name || last_name.empty?
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
end
