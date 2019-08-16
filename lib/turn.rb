def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    int_i = input.to_i
    return int_i -1
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        return false
    elsif board[index] == "X"   || board[index] == "O"
        return true
    else
        return false
    end
end

def valid_move?(board, index)
    if index.between?(0, 8) && position_taken?(board, index) == false 
        return true
    else 
        return false
    end
end 

def move(board, index, char)
  board[index] = char
end

def get_input()
  puts "Please enter 1-9:"
  a=gets.strip
  a = input_to_index(a)
  return a
end  

def turn(board)
  puts "Please enter 1-9:"
  a = get_input()
  if valid_move?(board, a) == true
    move(board, a, "X")
    display_board(board)
  elsif valid_move?(board, a) == false
    a=get_input()
  end 
end  