def greatest_number(array)
  array.each do |i|
    igreatest = true
    array.each do |j|
      if j > i
        igreatest = false
      end
    end
    if igreatest
      return i
    end
  end
end

p greatest_number([2,5,7,1,4,55,3,1])

def greatest_number_bis(array)
  max = 0
  array.each do |i|
    if i > max
      max = i
    end
  end
  max
end

p greatest_number_bis([2,5,7,1,4,55,3,1])