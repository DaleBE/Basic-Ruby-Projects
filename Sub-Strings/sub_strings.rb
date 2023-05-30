# frozen_string_literal: true

dictionary = %w[the dog great a]

def substrings(string, array)
  final_array = string.split.map do |word|
    array.grep(word)
  end
  final_array.flatten!
  final_array.each_with_object(Hash.new(0)) do |each_occurence, result|
    result[each_occurence] += 1
  end
end

p substrings('the dog and a blue dog went to the dog', dictionary)
