class Grid
  attr_accessor :grid

  def initialize 
  	self.grid = populate_board
  end

  def populate_board
		grid = {}
    [*'A'..'J'].each do |l|
		  [*1..10].each do |n|
        grid["#{l}#{n}".to_sym] = "w"
		  end
    end
  end
end