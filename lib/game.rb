require_relative 'board'
require_relative 'player'

class Game
attr_reader :board

  def initialize
    @board = Board.new
    @player1 = Player.new('O')
    @player2 = Player.new('X')
    @turn = 0
  end

  def place(row, column)
    check_win_or_draw
    invalid_move(row, column)
    @board.board[row][column] = set_marker
    increment_turn
    board # this line for display purposes in REPL
  end

  private
  attr_reader :player1, :player2

  def invalid_move(row, column)
    raise 'Move not valid' if row > 2 || column > 2 || @board.board[row][column] != nil
  end

  def set_marker
    @turn.even? ? player1.marker : player2.marker

  end

  def increment_turn
    @turn += 1
  end

  def win?
    /([XO])(\1\1.{3}*$|..\1..\1|...\1...\1$|.\1.\1..$)/ === @board.board
  end

  def draw?
    @board.board.all? { |space| space == nil ? true : false }
  end

  def check_win_or_draw
    puts "#{set_marker}'s won" if win?
    puts "It's a draw" if draw?
    puts "It's #{set_marker}'s turn"
  end
end
