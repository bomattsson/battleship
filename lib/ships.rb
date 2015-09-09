class Ship
	attr_accessor :position, :size, :name, :hit

	def initialize(size, name)
		#@position = ''
		@size = size	
		@name = name		 
		@hit = 0
	end

	def start_position(pos)
		@position = pos
	end

	#ubåt=u 
	#ship = minsvepare = size=3 hits[] 
end