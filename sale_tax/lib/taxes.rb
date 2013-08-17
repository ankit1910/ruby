class Taxes
  @@sales_tax_hash = {}
  @@import_duty_hash = {}
  def self.sales_tax_hash
    @@sales_tax_hash
  end
  def self.import_duty_hash
    @@import_duty_hash
  end
	def calculate_sales_tax(product_list)
    hash = Hash.new { |hash, key| hash[key] = 0}
    product_list.each do |key, values|
      hash[key] = (values[1] =~ /yes/i ) ? 0 : values[2] * 0.10
    end
    @@sales_tax_hash = hash
  end
  def calculate_import_duty(product_list)
    hash = Hash.new { |hash, key| hash[key] = 0}
    product_list.each do |key, values|
      hash[key] = (values[0] =~ /yes/i ) ? values[2] * 0.05 : 0
    end
    @@import_duty_hash = hash
  end
end
      