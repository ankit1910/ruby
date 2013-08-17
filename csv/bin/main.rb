require_relative '../lib/read_write_csv.rb'
require 'csv'
object = ReadWriteCsv.new
object.read_csv
object.write_csv

