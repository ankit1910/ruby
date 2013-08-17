class ReadWriteCsv
  def initialize
    @file_data_hash = Hash.new {|hash, key| hash[key] = []}
  end
  def read_csv(file)   
    arr_of_arrs = CSV.read(file)
    arr_of_arrs.each do |element|
      @file_data_hash[element[2]] << [element[0], element[1]]
    end
  end
  def write_csv(file)
    CSV.open(file, "wb") do |csv|
      @file_data_hash.each do |key, value|
        csv << [key]
        @file_data_hash[key].each do |element|
          csv << ["#{element[0]}(EmpId: #{element[1]})"]
        end
      end
    end
  end
end