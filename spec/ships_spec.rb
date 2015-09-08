require 'ships'

describe Ship do

	subject { Ship.new(0, '')}

	it 'creates a ship' do
		expect(subject).to be_kind_of Ship
	end 

	it 'has a custom size' do
		new_ship = Ship.new(2, '')
		expect(new_ship.size).to eq 2
	end

	it 'has a custom name' do
		new_ship = Ship.new(2, 'submarine')
		expect(new_ship.name).to eq 'submarine'
	end


	it 'can have a start position'do 
		subject.start_position(:a1)
		expect(subject.position).to eq :a1
	end

	it 'can recevie a hit' do
		expect(subject.hit).to eq 0
	end 

end