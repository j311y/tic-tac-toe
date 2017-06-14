require 'board'

describe Board do
  subject(:board) { described_class.new }

  it 'initializes with an empty 3 x 3 grid' do
    expect(board.board).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
  end
end
