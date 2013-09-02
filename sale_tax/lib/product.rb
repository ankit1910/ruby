class Product
  @@sales_tax_rate = 10.0
  @@import_duty_rate = 5.0
  attr_reader :name, :price, :imported, :sales_tax_exempted
  attr_accessor :after_tax_price, :sales_tax, :import_duty
  
  def initialize(name, price, imported, sales_tax_exempted)
    @name = name
    @price = price
    @imported = !!(imported =~ /y|yes/i)
    @sales_tax_exempted = !!(sales_tax_exempted =~ /y|yes/i)
    @import_duty = 0
    @sales_tax = 0
    @after_tax_price = 0
  end
  
  def calculate_after_tax_price
    calculate_sales_tax
    calculate_import_duty
    self.after_tax_price = sales_tax + import_duty + price 
  end

  private
  
  def calculate_sales_tax
    if !sales_tax_exempted
      self.sales_tax = (price * @@sales_tax_rate) / 100 
    end
  end
  
  def calculate_import_duty
    if imported
      self.import_duty = (price * @@import_duty_rate) / 100
    end
  end
end