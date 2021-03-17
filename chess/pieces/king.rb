require_relative '../piece.rb'
require_relative '../modules/stepable.rb'

class King < Piece
  include Stepable

  def symbol
    '♚'.colorize(color)
  end

  protected

  def move_diffs
    moves = [[-1,-1],[-1,0],[-1,1],[1,0],[0,1],[1,-1],[1,1],[0,-1]].freeze
  end
end