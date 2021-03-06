require 'ship'

describe Ship do 

	subject { Ship.new("A")}

	it 'creates a ship' do
		expect(subject).to be_kind_of Ship
	end 

	#it 'has a custom size' do
	#	@kind = "A"
	#	expect(kind.size).to eq 5
	#end

	it 'can have a start position'do 
		subject.start_position(:A1)
		expect(subject.position).to eq :A1
	end

	it 'can place a certain ship' do
		subject.ship(:D)	
		expect(subject).to eq :D
	end

	#it 'can receive a hit' do
	#	subject.hit(:hit)
	#	expect(subject.hit).to include hit
	#end 

	it 'gives ship a size to the right sort of vessel' do
		if @kind == "C"
		 	expect(subject.size).to eg 3
		 end
	end

end