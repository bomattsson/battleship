class Grid
  attr_accessor :grid

  def initialize
		self.grid = {}
    [*"A".."B"].each do |l|
		  [*1..2].each do |n|
        @grid["#{l}#{n}".to_sym]="water"
		  end
    end
  end
end