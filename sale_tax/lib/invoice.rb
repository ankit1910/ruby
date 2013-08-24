require_relative 'tabular.rb'
class Invoice
  attr_accessor :products, :grand_total
  def initialize
    @products = []
    @grand_total = 0
  end
  def generate_invoice
    header = ['Name', 'Price', 'Import Duty', 'Sales Tax Applied', 'Total']
    calculate_grand_total
    Tabular.display_table(header, products, grand_total)
  end
  def calculate_grand_total
    products.each do |product|
      @grand_total += product.after_tax_price # i used @ grand_total bcoz reader / accessor does'nt allowed to write without using '@' sign with in class
    end
  end
end