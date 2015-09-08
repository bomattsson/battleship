require 'grid'

describe Grid do

  it 'creates a grid' do
  subject = Grid.new
  expect(subject).to be_kind_of Grid
  end

  it 'creates cells' do
  subject = Grid.new
  expect(subject.grid).to be_kind_of Hash
  end

end