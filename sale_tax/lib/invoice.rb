class Invoice

  attr_accessor :products, :grand_total, :header
  def initialize
    @products = []
    @grand_total = 0
    @header = []
  end
  
  def generate_invoice
    calculate_after_tax_prices
    self.header = get_header_row
    rows = get_produts_rows
    calculate_grand_total
    table = Tabular.new(header, rows, grand_total)
    table.display_table
  end
  
  private
  
  def get_header_row
    ["Name", "Price", "Import_duty", "Sales_tax", "After_tax_price"]
  end
  
  def calculate_after_tax_prices
    products.each do |product|
      product.calculate_after_tax_price
    end
  end

  def get_produts_rows
    rows = []
    products.each do |product|
      row = []
      header.each do |column|
        inst_var = column.downcase.to_sym
        row << product.send(inst_var)
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