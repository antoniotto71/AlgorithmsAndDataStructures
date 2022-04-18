def add_until_100(array)
  return 0 if array.length == 0
  if array[0] + add_until_100(array[1, array.length - 1]) > 100
    add_until_100(array[1, array.length - 1])
  else
    array[0] + add_until_100(array[1, array.length - 1])
  end
end

p add_until_100([1,2,3,5,45,12,33,66,77])

def add_until_100m(array)
  return 0 if array.length == 0

  sum_upto_now = add_until_100m(array[1, array.length - 1])

  if array[0] + sum_upto_now > 100
    sum_upto_now
  else
    array[0] + sum_upto_now
  end
end

p add_until_100m([1,2,3,5,45,12,33,66,77])

def golomb(n, memo = {})
  return 1 if n == 1
  if memo[n].nil?
    memo[n] = 1 + golomb(n - golomb((golomb((n-1), memo)), memo), memo)
  end
  memo[n]
end

p golomb(20)

def unique_paths(rows, columns, memo = {})
  return 1 if rows == 1 || columns == 1
  if memo[[rows, columns]].nil?
    memo[[rows, columns]] = unique_paths(rows - 1, columns, memo) + unique_paths(columns, rows - 1, memo)
  end
  memo[[rows, columns]]
end

p unique_paths(30,50)