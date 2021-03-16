require_relative "./piece.rb"
class Board
    def inititalize
        # @color
        @rows = Array.new(8) {Array.new(8)}
        @piece = Piece.new('TestName') #should be private null_piece
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        if rows[start_pos].nil? #remember to update empty space with nullpiece 
            raise ArgumentError.new("Starting position is not available") 
        end
    end
end