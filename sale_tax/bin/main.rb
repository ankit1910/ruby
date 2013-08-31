require_relative "../lib/product.rb"
require_relative "../lib/invoice.rb"
require_relative '../lib/tabular.rb'
invoice = Invoice.new
while true
  puts "Name of the product: "
  name = gets.chomp
  puts "Imported? (y/n): "
  imported = gets.chomp
  puts "Exempted from sales tax? (y/n): "
  sales_tax_exempted = gets.chomp
  puts "Price: "
  price = gets.chomp.to_i
  invoice.products << Product.new(name, price, imported, sales_tax_exempted)
  puts "Do you want to add more items to your list(y/n): "
  break if gets !~ /[y]/i
end
invoice.generate_invoice