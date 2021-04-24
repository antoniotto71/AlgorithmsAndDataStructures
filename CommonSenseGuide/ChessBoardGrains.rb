# frozen_string_literal: true

def chessboard_space(number_of_grains)
  chessboard_spaces = 1
  placed_grains = 1

  while placed_grains < number_of_grains
    chessboard_spaces += 1
    placed_grains *= 2
  end
  chessboard_spaces
end

puts chessboard_space(556)

(1..64).each do |chessboard_space|
  puts "Chessboard space number: #{chessboard_space}: number of grains: #{2**(chessboard_space - 1)}"
end