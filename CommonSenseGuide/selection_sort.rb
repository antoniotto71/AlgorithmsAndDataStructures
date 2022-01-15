def selection_sort(array)
  end_index = array.length - 1
  c = 0
  (end_index).times do |i|
    lowest_number_index = i
    (i + 1..end_index).each do |j|
      if array[j] < array[lowest_number_index]
        lowest_number_index = j
        c+=1
      end
    end
    if lowest_number_index != i
      array[i], array[lowest_number_index] = array[lowest_number_index], array[i]
    end
  end
  return array, c
end

p selection_sort([50, 40, 30, 20, 10, 9, 8, 7, 6])
