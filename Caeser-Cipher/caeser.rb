string_in = 'Butterfly House'

puts "String to encode: #{string_in}"

transform_one = string_in.bytes

# p transform_one

def cipher(string, change)
  puts "Shift factor: #{change}"

  transform_two = string.map do |character|
    new_character = character + change

    if character <= 90 && character >= 65
      new_character > 90 ? new_character -= 26 : new_character # rubocop:disable Lint/UselessAssignment
    elsif character <= 122 && character >= 97
      new_character > 122 ? new_character -= 26 : new_character # rubocop:disable Lint/UselessAssignment
    else
      character
    end
  end

  # p transform_two

  encoded = transform_two.map { |ascii_number| ascii_number.chr }.join

  puts "Encoded string: #{encoded}"
end

cipher(transform_one, 3)
