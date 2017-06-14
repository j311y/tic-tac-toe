class Board

  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3) { nil } }
  end

end
