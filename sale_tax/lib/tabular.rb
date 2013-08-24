module Tabular
  def self.display_table(header, content = nil, grand_total = 0, footer = nil)
    column_no = header.count
    make_line(column_no)
    header.each do |column|
      printf("|%23s|", column)
    end
    make_line(column_no)
    if content
      content.each do |row|
        printf("|%23s|", row.name)
        printf("|%23s|", row.price)
        printf("|%23s|", row.import_duty)
        printf("|%23s|", row.sales_tax)
        printf("|%23s|", row.after_tax_price)
        printf("\n")
      end
      make_line(column_no)      
    end
    puts "GRAND TOTAL = #{ grand_total }"
    make_line(column_no)
    if footer
      footer.each do |column|
        printf("|%23s|", column)
      end
      make_line(column_no)
    end
  end
  def self.make_line(column_no)
    puts ""
    puts '-' * (25 * column_no)
  end
end