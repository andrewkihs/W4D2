require_relative '../piece.rb'
require_relative '../modules/slideable.rb'

class Bishop < Piece
  include Slideable

  def symbol
    '♝'.colorize(color)
  end

  protected

  def move_dirs
    # return the directions in which a bishop can move
    # a bishop can move diagonally
  end
end