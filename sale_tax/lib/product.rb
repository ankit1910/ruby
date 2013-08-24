class Product
  @@sales_tax_rate = 10.0
  @@import_duty = 5.0
  attr_reader :name, :price, :is_imported, :is_sales_tax
  attr_accessor :after_tax_price, :sales_tax, :import_duty
  def initialize(name, price, is_imported, is_sales_tax)
    @name = name
    @price = price
    @is_imported = (is_imported =~ /y|yes/i) ? 1 : 0
    @is_sales_tax = (is_sales_tax =~ /y|yes/i) ? 0 : 1
    @after_tax_price = calculate_sales_tax + calcuate_import_duty + price
    @sales_tax = calculate_sales_tax
    @import_duty = calcuate_import_duty
  end
  private
  def calculate_sales_tax
    (is_sales_tax * price * @@sales_tax_rate) / 100
  end
  def calcuate_import_duty
    (is_imported * price * @@import_duty) / 100
  end
end
