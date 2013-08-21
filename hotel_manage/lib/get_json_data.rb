require 'json'
module GetJsonData
  def self.get_json_data(filename)
    file_content = ''
    File.open("#{ File.dirname(__FILE__) }/../bin/#{ filename }", "r") do |file|
      while line = file.gets
        file_content << line
      end
    end     
    JSON.parse(file_content)
  end
end
