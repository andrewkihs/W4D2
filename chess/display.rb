require 'colorize'
require_relative './cursor.rb'
require_relative './board.rb'

class Display
    attr_reader :board 

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], @board)
    end

    
    def render
        @board.rows.map do |row|
            row.map do |piece|
                piece.to_s#.colorize(:white)
            end
        end
    end
end