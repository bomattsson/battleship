require 'ships'

describe Ship do

	subject { Ship.new }

	it 'creates a ship' do
		expect(subject).to be_kind_of Ship
	end 

	it 'has a size' do
		expect(subject.size).to eq 1
	end

	it 'can have a start position'do 
		subject.start_position(:a1)
		expect(subject.position).to eq :a1
	end

	it 'can have a name' do
		expect(subject.name).to eq :submarine
	end

	it 'can recevie a hit' do
		expect(subject.hit).to eq 0
	end 

end