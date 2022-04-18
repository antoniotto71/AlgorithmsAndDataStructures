
def is_valid?(x, y, board)
  n = board[0].length
  (x > 0 and y > 0 and x < n and y < n and board[x][y] == -1)
end

def print_solution(board)
  n = board[0].length
  (0..n - 1).each do |row|
    (0..n - 1).each do |column|
      print board[row][column]
      print ' '
    end
    print"\n"
  end
end

def solve_kt(n)
  board = Array.new(n) {Array.new(n, -1)}
  move_x = [2, 1, -1, -2, -2, -1, 1, 2]
  move_y = [1, 2, 2, 1, -1, -2, -2, -1]
  board[0][0] = 0
  pos = 1
  if not solve_kt_util(n, board, 0, 0, move_x, move_y, pos)
    puts "Solution does not exist"
  else
    print_solution(board)
  end
end

def solve_kt_util(n, board, curr_x, curr_y, move_x, move_y, pos)
  true if pos == n*n
  (0..7).each do |index|
    new_x = curr_x + move_x[index]
    new_y = curr_y + move_y[index]

    if is_valid?(new_x, new_y, board)
      board[new_x][new_y] = pos
      if solve_kt_util(n, board, new_x, new_y, move_x, move_y, pos + 1)
        true
      end
      board[new_x][new_y] = -1
    end
  end
  false
end

solve_kt(8)
