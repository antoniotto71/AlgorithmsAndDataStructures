def array_intersection(array1, array2)
  hash_array1 = {}
  intersection = []
  array1.each do |x|
    hash_array1[x] = true
  end
  array2.each do |y|
    if hash_array1[y]
      intersection << y
    end
  end
  intersection
end

array1 = [1,2,3,4,5,6,7,8]
array2 = [1,44,3]

p array_intersection(array1, array2)

def duplicate_string(array_of_strings)
  hash_of_strings = {}
  array_of_strings.each do |x|
    if hash_of_strings[x].nil?
    hash_of_strings[x] = true
    else
      puts "the duplicate string is #{x}"
    end
  end
end
array_of_strings = %w[a b c d c e]

duplicate_string(array_of_strings)