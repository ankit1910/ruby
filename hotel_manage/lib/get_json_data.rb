require 'json'
module GetJsonData
  def self.read_json_file(filename)
    file_content = ''
    File.open("#{ File.dirname(__FILE__) }/../bin/#{ filename }", "r") do |file|
      while line = file.gets
        file_content << line
      end
    end     
    JSON.parse(file_content)
  end
end
