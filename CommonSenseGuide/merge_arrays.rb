# the function merges two sorted arrays together to create a new sorted array
# containing all the values from both arrays

def merge(array1, array2)
  new_array = []
  array1_pointer = 0
  array2_pointer = 0
  # Run the loop until we've reached the end of both arrays

  while array1_pointer < array1.length || array2_pointer < array2.length
    if !array1[array1_pointer]
      new_array << array2[array2_pointer]
      array2_pointer += 1
    elsif !array2[array2_pointer]
      new_array << array1[array1_pointer]
      array1_pointer += 1
    elsif array1[array1_pointer] < array2[array2_pointer]
      new_array << array1[array1_pointer]
      array1_pointer += 1
    else
      new_array << array2[array2_pointer]
      array2_pointer += 1
    end
  end
  new_array
end

array1 = [1,2,3,5,8]
array2 = [4,7]

p merge(array1, array2)