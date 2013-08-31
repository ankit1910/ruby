module Tabular
  def self.display_table(header, rows = nil, footer_value)
    columns = header.count
    display_header(header, columns)
    display_content(rows, columns) if rows
    display_footer(footer_value, columns)
  end

  def self.display_header(header, columns)
    make_line(columns)
    header.each do |column|
      make_column(column)
    end
    make_line(columns)
  end

  def self.display_content(rows, columns)
    rows.each do |row|
      row.each do |value|
        make_column(value)
      end       
      printf("\n")
    end
    make_line(columns)      
  end

  def self.display_footer(footer_value, columns)
    puts "GRAND TOTAL = #{ footer_value }"
    make_line(columns)
  end

  def self.make_column(value)
    printf("|%18s|", value)
  end

  def self.make_line(columns)
    puts ""
    puts '-' * (20 * columns)
  end
end