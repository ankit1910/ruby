require_relative '../lib/hash.rb'
file_data_hash = Hash.new {|hash, key| hash[key] = ""}
file_data_hash.load_file("#{File.dirname(__FILE__)}/data.csv")
file_data_hash.write_file("#{File.dirname(__FILE__)}/data_output.csv")
