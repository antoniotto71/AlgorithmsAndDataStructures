def insertion_speed(number)
  8 * number**2
end

def merge_speed(number)
  64 * number * Math.log2(number)
end

num = 2

num += 1 while insertion_speed(num) < merge_speed(num)

puts num

2.upto(100).each do |num|
  puts "For n = #{num}: insertion speed = #{insertion_speed(num)}, merge speed = #{merge_speed(num).to_i}"
end

def first_speed(number)
  100 * number**2
end

def second_speed(number)
  2**number
end

num2 = 2

num2 += 1 while first_speed(num2) > second_speed(num2)

puts num2

