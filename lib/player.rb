class Player
    attr_accessor :board

  def initialize
    @board = Grid.new
  end

  def place_ship(coord)
    @board.grid[coord] = "s" if @board.grid[coord] == "w"
  end

  def shoot_at(coord)
    if @board.grid[coord] == 's'
      @board.grid[coord] = 'hit'
    else
      @board.grid[coord] = 'miss'
    end
  end
end

#När player skapas bör vi skapa 2 st grids - my_grid och opponent_grid i def initialize