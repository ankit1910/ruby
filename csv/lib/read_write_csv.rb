class ReadWriteCsv
  def initialize
    @file_data_hash = Hash.new {|hash, key| hash[key] = []}
  end
  def read_csv    
    arr_of_arrs = CSV.read("#{File.dirname(__FILE__)}/../bin/data.csv")
    arr_of_arrs.each do |element|
      @file_data_hash[element[2]] << [element[0], element[1]]
    end
  end
  def write_csv
    CSV.open("#{File.dirname(__FILE__)}/../bin/data_output.csv", "wb") do |csv|
      @file_data_hash.each do |key, value|
        csv << [key]
        @file_data_hash[key].each do |element|
          csv << ["#{element[0]}(EmpId: #{element[1]})"]
        end
      end
    end
  end
end