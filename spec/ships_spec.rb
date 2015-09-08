require 'ships'

describe Ship do

  it 'creates a ship' do
  subject = Ship.new
  expect(subject).to be_kind_of Ship
  end

end