class ReadWriteCsv
  def initialize
    @file_data_hash = Hash.new {|hash, key| hash[key] = []}
  end
  def read_csv(file)   
    CSV.foreach(file) do |row|
    @file_data_hash[row[2]] << [row[0], row[1]]
    end
  end
  def write_file(file)
    File.open(file, "w") do |file|
      @file_data_hash.each_key do |key|
        file.puts "#{ key } :"
        @file_data_hash[key].each do |value|
          file.puts "#{value[0]}(EmpId: #{value[1]})"
        end
      end
    end
  end
end
