# Exercise n.1

def count_characters(array)
  # return array[0].length if array.length == 1
  return 0 if array.length == 0
  array[0].length + count_characters(array[1, array.length - 1])
end

p count_characters(%w[ab c def ghij]) # Result is 10

# Exercise n. 2.1 (mine)

def even_elements(array, index = 0)
  return array if index >= array.length
  if array[index] % 2 == 1
    array.delete_at(index)
  end
  even_elements(array, index + 1)
end

# Exercise n. 2.2 (book)

def select_evens(array)
  return [] if array.empty?
  return [array[0]] + select_evens(array[1, array.length - 1]) if array[0].even?
  select_evens(array[1, array.length - 1]) if array[0].odd?
end

p even_elements([1,2,3,4,5,6,7,8])

p select_evens([1,2,3,4,5,6,7,8,])


# "Triangular Numbers" Exercise n. 3

def triangular(n)
  return 1 if n == 1
  triangular(n-1) + n
end

p triangular(7)

# Exercise n.4

def index_x(string)
  return 0 if string[0] == 'x'
  1 + index_x(string[1, string.length - 1])
end

p index_x("0123456x")

# Exercise n.5

def unique_paths(rows,columns)
  if (rows == 0 && columns == 0)
    puts "Arguments can't be both zero"
    return nil
  end
  return 1 if (rows == 1 || columns == 1)
  unique_paths(rows-1, columns) + unique_paths(rows, columns-1)
end

p unique_paths(3,2)

