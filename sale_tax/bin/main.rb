require_relative "../lib/product.rb"
require_relative "../lib/invoice.rb"
invoice = Invoice.new
while true
  puts "Name of the product: "
  name = gets.chomp
  puts "Imported? (y/n): "
  is_imported = gets.chomp
  puts "Exempted from sales tax? (y/n): "
  is_sales_tax_exempted = gets.chomp
  puts "Price: "
  price = gets.chomp.to_i
  invoice.products << Product.new(name, price, is_imported, is_sales_tax_exempted)
  puts "Do you want to add more items to your list(y/n): "
  break if gets !~ /[y]/i
end
invoice.generate_invoice