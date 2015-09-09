class Ship
	attr_accessor :position, :size, :name, :boat :hit,

	def initialize(kind, size)
		
		case upcase
		when "A"

		
		@size = size	
		@name = name		 
		@hit = 0
	end


	def start_position(pos)
		@position = pos
	end

end