require 'grid'
require 'player'

describe Grid do

  it 'creates a grid' do
  	subject = Grid.new
  	expect(subject).to be_kind_of Grid
  end

  it 'creates water' do
  	subject = Grid.new
  	expect(subject.grid).to include :a1 => "w"
  end



end