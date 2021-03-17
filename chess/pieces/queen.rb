require_relative '../piece.rb'
require_relative '../modules/slideable.rb'

class Queen < Piece
  include Slideable

  def symbol
    '♛'.colorize(color)
  end

  protected

  def move_dirs
    #ONLY MOVES DIAGONAL
    diagonal_dirs  += horizontal_dirs
    # return the directions in which a bishop can move
    # a bishop can move diagonally
  end
end