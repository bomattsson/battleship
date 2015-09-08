require 'grid'
require 'player'

describe 'Player' do

  subject { Player.new }

  #let(:grid) { Grid.new }

  it 'can place ship' do
    #byebug
    subject.place_ship(:a1)
    expect(subject.board.grid).to include :a1 => "s"
  end

  it 'can shoot & hit' do
    subject.place_ship(:a1)
    subject.shoot_at(:a1)
    expect(subject.board.grid).to include :a1 => "hit"
  end

  it 'can shoot & miss' do
    subject.place_ship(:a2)
    subject.shoot_at(:a1)
    expect(subject.board.grid).to include :a1 => "miss"
  end
end