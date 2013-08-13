require_relative '../lib/string.rb'
puts "enter string"
p gets.gsub(/\s/,'').count_diff_char
