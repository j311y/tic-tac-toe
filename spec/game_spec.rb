require 'game'
require 'board'
require 'player'

describe Game do
  subject(:game) { described_class.new }

  context 'Placing markers on the Board' do
    it 'players can place their marker on the board' do
      game.place(0, 0)
      expect(game.board.board).to eq([['O', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      game.place(0, 1)
      expect(game.board.board).to eq([['O', 'X', nil], [nil, nil, nil], [nil, nil, nil]])
    end
    it 'throws an error if a place is chosen off the board' do
      expect { game.place(0, 3) }.to raise_error 'Move not valid'
      expect { game.place(3, 0) }.to raise_error 'Move not valid'
      expect { game.place(3, 3) }.to raise_error 'Move not valid'
    end
    it 'throws an error if the place is already chosen' do
      game.place(0, 0)
      expect { game.place(0, 0) }.to raise_error 'Move not valid'
    end
  end

  context 'Turns' do
    it 'changes player turn after a marker is placed' do
      game.place(0, 0)
      expect(game.board.board).to eq([['O', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      game.place(0, 1)
      expect(game.board.board).to eq([['O', 'X', nil], [nil, nil, nil], [nil, nil, nil]])
      game.place(2, 1)
      expect(game.board.board).to eq([['O', 'X', nil], [nil, nil, nil], [nil, 'O', nil]])
    end
  end
end
