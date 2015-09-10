require 'grid'
require 'player'

describe Grid do

	subject { Grid.new }

  it 'creates a grid' do
  	expect(subject).to be_kind_of Grid
  end

  it '#grid is a hash' do
  	expect(subject.grid).to be_kind_of Hash
  end

  it 'creates water' do
  	expect(subject.grid).to include :A1 => "w"
  end



end