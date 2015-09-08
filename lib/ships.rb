class Ship
	attr_accessor :position, :size, :name, :hit

	def initialize(storlek, namn)
		#@position = ''
		@size = storlek
		@name = namn		 
		@hit = 0
	end

	def start_position(pos)
		@position = pos
	end

	#ubåt=u 
	#ship = minsvepare = size=3 hits[] 
end