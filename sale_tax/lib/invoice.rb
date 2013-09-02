class Invoice
  attr_accessor :products, :grand_total
  
  def initialize
    @products = []
    @grand_total = 0
  end
  
  def generate_invoice
    header = generate_header
    calculate_after_tax_prices
    rows = generate_rows
    calculate_grand_total
    table = Tabular.new(header, rows, grand_total)
    table.display_table
  end
  
  private
  def generate_header
    header = []
    products[0].instance_variables.each do |var|
      header << var.to_s.gsub('@', '').capitalize
    end
    header
  end
  
  def calculate_after_tax_prices
    products.each do |product|
      product.after_tax_price
    end
  end

  def generate_rows
    rows = []
    products.each do |product|
      row = []
      product.instance_variables.each do |var|
        row << product.instance_variable_get(var)
      end
      rows << row
    end
    rows
  end
  
  def calculate_grand_total
    products.each do |product|
      self.grand_total += product.after_tax_price
    end
  end
end