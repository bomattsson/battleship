class Player
    attr_accessor :my_board
    attr_accessor :opponents_board

  def initialize
    @my_board = Grid.new
    @opponents_board = Grid.new
  end

  def place_ship(coord)
    @my_board.grid[coord] = "s" if @my_board.grid[coord] == "w"
  end

  #def place_ship(coord)         
        #if @my_board.grid[coord] == "water"
            #@my_board.grid[coord] = "ship" 
            #true
        #else
            #false
        #end
    #end

   # def place_ship2(coord)
    #@my_board.grid[coord] = "s" if @my_board.grid[coord] == "w"
    #@my_board.grid[coord].next = "s" if @my_board.grid[coord].next == "w"
  #end

  def shoot_at(coord)
    if @my_board.grid[coord] == 's'
      @my_board.grid[coord] = 'hit'
    else
      @my_board.grid[coord] = 'miss'
    end
  end

  def shoot(player,coord)
    oppboard = (player).my_board
    if oppboard.grid[coord] == 's'
      oppboard.grid[coord] = 'hit'
      @opponents_board.grid[coord] = 'hit'
    else
      oppboard.grid[coord] = 'miss'
      @opponents_board.grid[coord] = 'miss'
    end
  end

end

#När player skapas bör vi skapa 2 st grids - my_grid och opponent_grid i def initialize