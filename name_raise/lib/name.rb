class Name
  attr_accessor :first_name,:last_name
  def initialize (first_name, last_name)
    begin
      raise 'name field cant be empty' if first_name.length == 0 or last_name.length ==0
      raise 'first letter of first name is not capital' if first_name !~ /[A-Z][\w]+$/
      @first_name = first_name
      @last_name = last_name
      rescue Exception => e 
         p e.message
    end
   end
end
