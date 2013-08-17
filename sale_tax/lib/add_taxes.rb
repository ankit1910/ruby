require_relative 'taxes.rb'
module AddTaxes
  def self.tax_addition(product_list)
    sales_tax_hash = Taxes.sales_tax_hash
    import_duty_hash = Taxes.import_duty_hash
    product_list.each_key do |key|
      product_list[key][2] += (sales_tax_hash[key] + import_duty_hash[key])
    end
    product_list
  end
end


