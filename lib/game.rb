require_relative 'board'
require_relative 'player'

class Game

attr_reader :board, :player1, :player2

  def initialize
    @board = Board.new
    @player1 = Player.new('O')
    @player2 = Player.new('X')
    @turn = 0
  end

  def place(row, column)
    invalid_move(row, column)
    @board.board[row][column] = set_marker
    increment_turn
    board # this line for display purposes in REPL only
  end

  private

  def invalid_move(row, column)
    raise 'Move not valid' if row > 2 || column > 2 || @board.board[row][column] != nil
  end

  def set_marker
    @turn.even? ? player1.marker : player2.marker
  end

  def increment_turn
    @turn += 1
  end

end
