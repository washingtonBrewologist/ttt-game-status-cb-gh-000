# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # first column win
  [1,4,7], # second column win
  [2,5,8], # third column win
  [0,4,8], # lefthand diagonal win
  [2,4,6]  # righthand diagonal win
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]  # grabs each index from the win_combination
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
# loads values of board at winning indexes
    position_1 = board[win_index_1[0]]
    position_2 = board[win_index_2[1]]
    position_3 = board[win_index_3[2]]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
        end
      return false
    end
  end
