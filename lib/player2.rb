class Player2
    attr_accessor :my_board
    attr_accessor :opponents_board

  def initialize
    @my_board = Grid.new
    @opponents_board = Grid.new
  end

  def place_ship(coord)
    @my_board.grid[coord] = "s" if @my_board.grid[coord] == "w"
  end

  def shoot_at(coord)
    if @my_board.grid[coord] == 's'
      @my_board.grid[coord] = 'hit'
    else
      @my_board.grid[coord] = 'miss'
    end
  end
end

#När player skapas bör vi skapa 2 st grids - my_grid och opponent_grid i def initialize