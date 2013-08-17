require_relative "../lib/taxes.rb"
module DisplayInvoice
  def self.display_invoice(product_list)
    grand_total = 0
    puts ""
    make_line
    puts "|                                            name|                                          amount|"
    make_line
    product_list.each_key do |key|
      printf("|%48s|%48d|\n", key, product_list[key][2])
      grand_total += product_list[key][2]
    end
    make_line
    puts "total amount #{grand_total}"                                                                       
    make_line
  end
  def self.make_line
    puts "---------------------------------------------------------------------------------------------------"
  end
end