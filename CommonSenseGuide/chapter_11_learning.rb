def double_array_recursive(array, index = 0)
  if index >= array.length
    return
  else
    array[index] *= 2
    double_array_recursive(array,index + 1)
  end
end

ary = [1,2,3,4,5,6,7,8]

double_array_recursive(ary)

p ary

def factorial_iterative(n)
  product = 1
  (1..n).each do |num|
    product *= num
  end
  product
end

p factorial_iterative(10)

def factorial_recursive_top_down(n)
  if n == 1
    1
  else
    n * factorial_recursive_top_down(n-1)
  end
end

p factorial_recursive_top_down(10)

def factorial_recursive_bottom_up(n, i = 1, product = 1)
  return product if i > n
  factorial_recursive_bottom_up(n, i+1, product * i)
end

p factorial_recursive_bottom_up(10)

