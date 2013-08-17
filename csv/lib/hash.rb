class Hash
  def load_file(file_name)
    File.readlines(file_name).each do |line|
      line_array = line.chomp.split(', ')
      self[line_array[2]] << "#{line_array[0]}(EmpId: #{line_array[1]})\n"
    end
    self
  end
  def write_file(file_name)
    File.open(file_name, "w") do |file|
      self.each do |key, value|
        file.puts "#{key}:\n#{value}"
      end
    end
  end
end