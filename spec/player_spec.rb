require 'grid'
require 'player'

describe 'Player' do

  subject { Player.new }

  it 'it creates a my_board' do
    expect(subject.my_board).to be_kind_of Grid
  end

  it 'can place ship' do
    subject.place_ship(:A1)
    expect(subject.my_board.grid[:A1]).to eq "s"
  end

  it 'can receive a hit' do
    subject.place_ship(:A1)
    subject.shoot_at(:A1)
    expect(subject.my_board.grid).to include :A1 => "hit"
  end

  it 'can receive a miss' do
    subject.place_ship(:A2)
    subject.shoot_at(:A1)
    expect(subject.my_board.grid).to include :A1 => "miss"
  end

  it 'can shoot at opponent' do
  	player2 = Player.new
  	subject.shoot(player2,:A1)
  	expect(subject.opponents_board.grid).to include :A1 => "miss"
  end 

end