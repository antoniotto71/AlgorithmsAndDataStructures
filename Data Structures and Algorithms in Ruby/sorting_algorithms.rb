def less(value1, value2)
  value1 < value2
end

def more(value1, value2)
  value1 > value2
end

def bubble_sort(arr)
  i = 0
  while i < arr.length - 1
    j = 0
    while j < arr.length - i - 1
      if more(arr[j], arr[j+1])
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
      j +=1
    end
    i += 1
  end
  arr
end

my_arr = [5, 7, 14, 1, 3, 22, 77]

p bubble_sort(my_arr)


