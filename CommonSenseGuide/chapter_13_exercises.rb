def greatest_product_of_three(array)
  array.sort!
  array[array.length-3, array.length - 1].inject(:*)
  # array[array.length - 3] * array[array.length - 2] * array[array.length - 1]
end

ary = [0,1,2,3,4,5,6,7,8,9,10,11]

p greatest_product_of_three(ary)

def find_missing_number(array)
  array.sort!
  array.each.with_index do |elem, idx|
    if elem != idx
      return idx
    end
  end
  nil
end

p find_missing_number(ary)

def greatest_number_nlog(array)
  array.sort!
  array.last
end

def greatest_number_linear(array)
  max = array[0]
  array.each do |elem|
    if elem > max
      max = elem
    end
  end
  max
end

def greatest_number_square(array)
  max = array[0]
  array.each do |first|
    array.each do |second|
      if first > second
        max = first
      end
    end
  end
  max
end

def greatest_number_square_book(array)
  array.each do |first|
    first_is_max = true
    array.each do |second|
      if second > first
        first_is_max = false
      end
    end
    if first_is_max
      return first
    end
  end
end

p greatest_number_nlog(ary)

p greatest_number_linear(ary)

p greatest_number_square(ary)

p greatest_number_square_book(ary)