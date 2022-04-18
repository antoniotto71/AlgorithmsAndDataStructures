def sum_array(array)
  if array.length == 1
    array[0]
  else
    array[0] + sum_array(array[1, array.length - 1])
  end
end

p sum_array([1, 2, 3, 4, 5, 6, 7, 8, 9])

def reverse_string(string)
  if string.length == 1
    string[0]
  else
    reverse_string(string[1, string.length - 1]) + string[0]
  end
end

p reverse_string("Antonio Guitto")

def reverse(string)  # it doesn't work without first return
  return string[0] if string.length == 1
  reverse(string[1, string.length - 1]) + string[0]
end

p reverse("Antonio")

def count_x(string)
  return 0 if string.length == 0
  if string[0] == 'x'
    1 + count_x(string[1, string.length - 1])
  else
    count_x(string[1, string.length - 1])
  end
end

str = "xxrtewrwrwexxxx"

p count_x(str)

def number_of_paths(n)
  return 0 if n < 0
  return 1 if n == 0 || n == 1
  number_of_paths(n-1) + number_of_paths(n-2) + number_of_paths(n-3)
end

p number_of_paths(4)

p ary = (1..10).map {|n| number_of_paths(n)}

p ary2 = (1..10).map(&method(:number_of_paths))