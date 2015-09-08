require 'grid'

describe Grid do

  it 'creates a grid' do
  	subject = Grid.new
  	expect(subject).to be_kind_of Grid
  end

  it 'creates water' do
  	subject = Grid.new
  	expect(subject.grid).to include :a1 => "w"
  end

  it 'can place ship' do
  	subject = Grid.new
  	subject.place_ship(:a1)
  	expect(subject.grid).to include :a1 => "s" 
  end

end