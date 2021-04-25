# frozen_string_literal: true

require 'benchmark'

# complexity O(n)
def fun1(num)
  m = 0
  num.times.each do
    m += 1
  end
  m
end

# complexity O(n^2)
def fun2(num)
  m = 0
  num.times.each do
    num.times.each do
      m += 1
    end
  end
  m
end

# complexity O(N+(N-1)+(N-2)+...) == O(N(N+1)/2) == O(n^2)

def fun3(num)
  m = 0
  i = 0
  while i < num
    j = 0
    while j < i
      m += 1
      j += 1
    end
    i += 1
  end
  m
end




p fun2(100)
