# frozen_string_literal: true

def stock_picker(array_of_values)
  location_of_values = []

  array_of_values.each_with_index { |value, index| location_of_values.push([value, index]) }.sort

  greater_values = location_of_values.select { |pair| pair[1] >= location_of_values.min[1] }

  puts "Buy on day: #{greater_values.min[1]}, and sell on day: #{greater_values.max[1]}"
end

stock_picker([23, 11, 4, 16, 3, 17])
stock_picker([23, 17, 11, 4])
stock_picker([45, 67, 23, 11, 34, 89, 26])
