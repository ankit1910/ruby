require_relative "../lib/taxes.rb"
require_relative "../lib/add_taxes.rb"
require_relative "../lib/display_invoice.rb"
product_list = Hash.new { |hash, key| hash[key] = [] }
while true
  puts "Name of the product: "
  name = gets.chomp
  puts "Imported?: "
  product_list[name] << gets.chomp
  puts "Exempted from sales tax?: "
  product_list[name] << gets.chomp
  puts "Price: "
  product_list[name] << gets.chomp.to_i
  puts "Do you want to add more items to your list(y/n): "
  break if gets !~ /[y]/i
end
taxes = Taxes.new
taxes.calculate_sales_tax(product_list)
taxes.calculate_import_duty(product_list)
updated_product_list = AddTaxes.tax_addition(product_list)
DisplayInvoice.display_invoice(updated_product_list)