require_relative '../piece.rb'
require 'Singleton'

class NullPiece < Piece
    include Singleton
    def initialize

    end

    def moves
        moves = []
    end

    def symbol

    end
end