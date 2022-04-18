def max(array)
  puts 'recursion'
  return array[0] if array.length == 1
  if array[0] > max(array[1, array.length - 1])
    array[0]
  else
    max(array[1, array.length - 1])
  end
end

ary = [2,5,77,88,123,0,12,1]

p max(ary)

def max_memo(array)
  puts 'recursion'
  return array[0] if array.length == 1

  remainder_max = max_memo(array[1, array.length - 1])

  if array[0] > remainder_max
    array[0]
  else
    remainder_max
  end
end

p max_memo(ary)

def fib_t(n)
  return n if n <= 1
  fib_t(n-2) + fib_t(n-1)
end

p fib_t(10)

def fib(n, memo = {})
  return n if n == 0 || n == 1
  # Check the hash table (called memo) to see whether fib(n)
  # was already computed or not:
  if memo[n].nil?
    #If n is NOT in memo, compute fib(n) with recursion
    # and then store the result in the hash table:
    memo[n] = fib(n-2, memo) + fib(n-1, memo)
  end
  # By now, fib(n)'s result is certainly in memo. (Perhaps
  # it was there before, or perhaps we just stored it there
  # in the previous line of code. But it's certainly there now.) # So let's return it:
  memo[n]
end

p fib(10)

def fib_bup(n)
  if n == 0
    return 0
  end
  # a and b start with the first two numbers in the
  # series, respectively:
  a = 0
  b = 1

  # Loop from 1 until n:
  (1..n-1).each do
    temp = a
    a = b
    b = temp + a
  end

  b
end

p fib_bup(10)