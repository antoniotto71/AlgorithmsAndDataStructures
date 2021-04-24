# frozen_string_literal: true

def linear_search_unsorted(arr, value)
  i = 0
  while i < arr.length
    return true if value == arr[i]
    i += 1
  end
  false
end

arr = [3, 1, 5, 6, 9, 8, 2, 4, 7]

p linear_search_unsorted(arr, 1)
