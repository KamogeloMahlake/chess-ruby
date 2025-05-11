class Pawn < Piece
  def to_s
    'P'.colorize(color)
  end
end
