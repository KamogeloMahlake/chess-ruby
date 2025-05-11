class Board
  attr_accessor :board
    
  def initialize
    @board = board_matrix    
  end

  def board_matrix
    [
      chessmen(:black),
      pawn(:black),
      create_nil,
      create_nil,
      create_nil,
      create_nil,
      pawn(:white),
      chessmen(:white)
    ]
  end

  def create_nil
    [nil, nil, nil, nil, nil, nil, nil, nil]
  end

  def pawn(color)
    Array.new(8) {Pawn.new(color)}
  end

  def chessmen(color)
    [Rook.new(color), Knight.new(color), Bishop.new(color), Queen.new(color), King.new(color), Bishop.new(color), Knight.new(color), Rook.new(color)]
  end

  def to_s
    @board.each_with_index do |row, i|
      row.each_with_index do |sq, j|
        pattern = i.even? ? %i[red light_black] : %i[light_black red]
        
        if sq.nil?
          print '   '.colorize(:background => pattern[j % 2])
        else
          print " #{sq} ".colorize(:background => pattern[j % 2])
        end

      end
      puts ''
    end
  end

  """
  FLOOR_0 = '+--------+'
  FLOOR = '---------+'
  EMPTY_ROW_0 = '|        |'
  EMPTY_ROW_0_WHITE = '|        |'
  EMPTY_ROW = '         |'
  EMPTY_ROW_WHITE = '         |'


  def initialize()
    @matrix = Array.new(8) {Array.new(8)}
  end

  def to_s
    print_floor
    @matrix.each do |x|
      3.times {puts row}
      print_floor
    end

  end

  private
    def print_floor
      puts FLOOR_0 + FLOOR * 7
    end
    
    def row 
      EMPTY_ROW_0_WHITE + (EMPTY_ROW + EMPTY_ROW_WHITE) * 3 + EMPTY_ROW
    end
"""
end
