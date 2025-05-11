class Bishop < Piece
  def to_s 
    'B'.colorize(color)
  end

  private
    def bishop_moves
      [[-1, -1], [1, 1], [1, -1], [-1, 1]]
    end
end
