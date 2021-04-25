# frozen_string_literal: true

def linear_search_unsorted(arr, value)
  i = 0
  while i < arr.length
    return true if value == arr[i]
    i += 1
  end
  false
end

arr = [11, 9, 5, 13, 12, 8, 10, 4, 7]

p linear_search_unsorted(arr, 1)

def linear_search_sorted(arr, value)
  i =0
  while i < arr.length
    if value == arr[i]
      return true
    elsif value < arr[i]
      return false
    end
    i +=  1
  end
  false
end

p linear_search_sorted(arr.sort, 6)

def binary_search_iterative(arr, value)
  low = 0
  high = arr.length - 1
  while low <= high
    mid = low + (high - low)/2
    if arr[mid] == value
      return true
    elsif arr[mid] < value
      low = mid + 1
      else high = mid - 1
    end
  end
  false
end

my_arr = [23, 44, 67, 88, 22, 11, 10, 1, 29, 31, 14].sort!

p my_arr

p binary_search_iterative(my_arr, 22)

def binary_search_recursive(arr, value)
  binary_search_recursive_util(arr, 0, arr.length-1, value)
end

def binary_search_recursive_util(arr, low, high, value)
  if low > high
    return false
  end
  mid = low + ((high - low) / 2)
  if arr[mid] == value
    return true
  elsif arr[mid]<value
    return binary_search_recursive_util(arr, mid+1, high, value)
  else
    return binary_search_recursive_util(arr, low, mid-1, value)
  end
end

p binary_search_recursive(my_arr, 61)