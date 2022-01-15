# https://www.honeybadger.io/blog/ruby-bubble-sort/
# Our method will take an array as a parameter

def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1

  loop do
    # we need to create a variable that will be checked so that we don't run into an infinite loop scenario.
    swapped = false

    # subtract one because Ruby arrays are zero-index based
    (array_length - 1).times do |i|
      puts "iteration: #{i}"
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
    p array
    puts "\n"
  end
  array
end

def bubble_sort_bis(array)
  sorted = false
  end_index = array.size - 1
  until sorted
    sorted = true
    (end_index).times do |i|
      puts "iteration: #{i}"
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
    puts "\n"
    end_index -= 1
  end
  array
end




p bubble_sort_bis([123,22,44,55,12,1,0,7,21,33])
