# Connect 4 
# Ref: https://en.wikipedia.org/wiki/Connect_Four
#
# Task
#  	The game consists of a grid (7 columns and 6 rows) and two players
#   that take turns to drop a plastic disc into the top of any chosen column.
#
#   The pieces fall straight down, occupying the next available space within the column.
#
#   The objective of the game is to be the first to form a horizontal, vertical, or
#   diagonal line of four of one's own discs.
#
# Your task is to create a Class called Connect4 that has a method called play,
# which takes one argument for the column where the player is going to place their disc.
# 
# Rules
#  	If a player successfully has 4 discs horizontally, vertically or diagonally
#   then you should return "Player n wins!” where n is the current player either 1 or 2.
#
# If a player attempts to place a disc in a column that is full then you should
# return ”Column full!” and the next move must be taken by the same player.
#
# If the game has been won by a player, any following moves should return ”Game has finished!”.
#
# Any other move should return ”Player n has a turn” where n is the current player either 1 or 2.
#
# Player 1 starts the game every time and alternates with player 2. Your class must
# keep track of who's turn it is.
#
# The columns are numbered 0-6 left to right.

class Connect4
  def initialize
    @board = Array.new(7) {Array.new(6, nil)}
    @player_1 = "Player 1"
    @player_2 = "Player 2"
    @turn = @player_1
    @last_row = 0
    @last_col = 0
    @running = true
  end

  def play(column)
    if @running
      show_board
      if place(@turn, column)
        if is_won(@turn)
          @running = false
          return "#{@turn} wins!"
        end
      else
        return "Column full!"
      end
      return next_turn
    else
      return "Game has finished!"
    end
  end

  def show_board
    for row in @board
      puts row.inspect
    end
  end

  def place(player, column)
    (5).downto(0).each do |row|
      if @board[row.to_i][column] == nil
        @board[row.to_i][column] = player
        @last_row = row.to_i
        @last_col = column
        return true
      end
    end
    return false
  end

  def next_turn
    case @turn
    when @player_1
      @turn = @player_2
      return "Player 1 has a turn"
    else
      @turn = @player_1
      return "Player 2 has a turn"
    end
  end

  def is_won(player)
    check_diag(player)
    return check_rows(player) || check_cols(player) # || check_diag(player)
  end

  def check_rows(player)
    for row in @board
      (0..3).each do |index|
        won = row[index..(index + 3)].all? {|cell| cell == player}
        if won
          return true
        end
      end
    end
    return false
  end

  def check_cols(player)
    for row in @board.transpose
      (0..2).each do |index|
        won = row[index..(index + 3)].all? {|cell| cell == player}
        if won
          return true
        end
      end
    end
    return false
  end

  def check_diag(player)
    (0..2).each do |row|
      (0..3).each do |col|
        # won = [@board[row][col], @board[row + 1][col + 1], @board[row + 2][col + 2], @board[row + 3][col + 3]].all? {|cell| cell == player}
        # if won
          # puts "won diag"
          # puts won
          # puts [@board[row][col], @board[row + 1][col + 1], @board[row + 2][col + 2], @board[row + 3][col + 3]].inspect
          # return true
        # end
        puts "#{row}, #{col}"
        puts "#{row + 1}, #{col + 1}"
        puts "#{row + 2}, #{col + 2}"
        puts "#{row + 3}, #{col + 3}"
      end
    end
    
    (0..2).each do |row|
      (6).downto(3).each.each do |col|
        # won = [@board[row][col.to_i], @board[row + 1][col.to_i + 1], @board[row + 2][col.to_i + 2], @board[row + 3][col.to_i + 3]].all? {|cell| cell == player}
        # if won
        #   puts "won reverse diag"
        #   puts won
        #   puts [@board[row][col.to_i], @board[row + 1][col.to_i + 1], @board[row + 2][col.to_i + 2], @board[row + 3][col.to_i + 3]].inspect
        #   return true
        # end
        puts "#{row}, #{col}"
        puts "#{row + 1}, #{col - 1}"
        puts "#{row + 2}, #{col - 2}"
        puts "#{row + 3}, #{col - 3}"
      end
    end
  end
end