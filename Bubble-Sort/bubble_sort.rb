array1 = [2, 4, 8, 1, 6]

def bubble_sort(array)
  array_length = array.size
  if array_length <= 1
    return array
  end

  loop do
    swapped = false
    (array_length-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

p bubble_sort(array1)
p bubble_sort([1])
p bubble_sort([34, 67, 1, 99, 32])