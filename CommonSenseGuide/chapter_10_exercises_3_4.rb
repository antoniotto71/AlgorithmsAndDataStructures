def print_numbers(array)
  array.each do |item|
    if item.is_a?(Integer)
      puts item
    else
      print_numbers(item)
    end
  end
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

def sum(low, high)
  if high == low
    low
  else
    high + sum(low, high - 1)
  end
end

p sum(1, 5)