# code your #valid_move? method here
def valid_move?(board, index)
  # move is to a position on the tic-tac-toe-board
  # i.e. index in range of 0 to 8

  # move to a vacant position
  # i.e. position_taken? is false
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  # false if vacant
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  # true if taken
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end
