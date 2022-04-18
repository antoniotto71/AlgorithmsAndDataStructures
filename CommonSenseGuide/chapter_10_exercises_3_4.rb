def print_numbers(array)
  array.each do |item|
    if item.is_a?(Array)
      print_numbers(item)
    else
      puts item
    end
  end
end

def flatten(array, result = []) # it's necessary to put the result as a function parameter
  array.each do |item|
    if item.is_a?(Array)
      flatten(item, result)
    else
      result << item
    end
  end
  result
end

array = [1,
         2,
         3,
         [4,5,6],
         7,
         [8,
          [9, 10, 11,
           [12, 13, 14]
          ]
          ],
          [15, 16, 17, 18, 19,
           [20, 21, 22,
            [23, 24, 25,
             [26, 27, 29]
            ], 30, 31
           ], 32
          ], 33
         ]

print_numbers(array)

p flatten(array)

def sum(low, high)
  if high == low
    low
  else
    high + sum(low, high - 1)
  end
end

p sum(1, 5)