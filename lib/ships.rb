class Ship
	attr_accessor :position, :size
	attr_accessor :name
	attr_accessor :hit

	def initialize
		#@position = ''
		@size = 1
		@name = :submarine
		@hit = 0
	end

	def start_position(pos)
		@position = (pos)
	end

	#ubåt=u 
	#ship = minsvepare = size=3 hits[] 
end