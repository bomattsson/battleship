class Ship
	
	attr_accessor :position, :size, :kind, :hit

	def initialize(kind)
		
		@size = size	
		@kind = kind		 


			if kind.upcase == "A"
			size = 5

		elsif

			kind.upcase =="B"
			size = 4

		elsif

			kind.upcase == "C"
			size = 3

		elsif

			kind.upcase == "D"
			size = 2

		else

			kind.upcase == "E"
			size = 1
		end
	end


	def start_position(pos)
		@position = pos
	end	

	def takes_a_hit(hit)
		@hit = hit
	end
	
end