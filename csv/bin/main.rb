require_relative '../lib/read_write_csv.rb'
require 'csv'
object = ReadWriteCsv.new
object.read_csv("#{File.dirname(__FILE__)}/data.csv")
object.write_csv("#{File.dirname(__FILE__)}/data_output.csv")

