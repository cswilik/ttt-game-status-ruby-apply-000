# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ #parent array that contains 8 children
#arrays w 3 elements each
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
  
  def won?(board) # to determine winner, we have to grab each index of the parent array
    WIN_COMBINATIONS.each do |win_combo|
      win_index_1 = win_combo[0]
      win_index_2 = win_combo[1]
      win_index_3 = win_combo[2]
      
      position_1 = board[win_index_1] #value of board at win_index 1
      puts position_1
      position_2 = board[win_index_2] #value of board at win_index 2
      puts position_2
      position_3 = board[win_index_3] #value of board at win_index_3
      puts position_3
      if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combo
    end
  end
  return false
end

  def full?(board)
    board.all? do |index|
    index == "X" || index  == "O"
  end 
end 
 
 
def draw?(board)
  if !won?(board) && full?(board)
    return true 
    elsif !full?(board) && !won?(board)
    return false 
  end 
end 
 
 
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true 
  else 
    false 
  end 
end 
 
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end 
end 
 
def winner(board)index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end


 
  
 

  
   