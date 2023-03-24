string_in = "Hello World"
puts "String to encode: #{string_in}"

transform_one = string_in.bytes
#p transform_one

def cipher(string, change)
  
  puts "Shift factor: #{change}"

  transform_two = string.map do |char|
      if char <= 90 && char >= 65
        char = char + change
          if char > 90
            char = char - 26
          else 
            char
          end
      elsif char <= 122 && char >= 97 
        char = char + change
          if char > 122
            char = char - 26
          else 
            char
          end
      else 
        char
      end
  end
  #p transform_two
  puts "Encoded string: #{transform_two.map { |char| char.chr }.join}"
end

cipher(transform_one, 3)