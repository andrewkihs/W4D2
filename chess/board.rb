require_relative "./piece.rb"
class Board
    def inititalize
        # @color
        @rows = Array.new(8) {Array.new(8, "__")}
        (0...@rows.length).each do |row|
            (0...@rows.length).each do |col|
                pos = [row,col]
                if row < 2 || row >= 6
                    @rows[pos] = Piece.new("test", @rows, pos)
                else
                    @rows[pos] = nil
                end
            end
        end
        # @piece = Piece.new('TestName', @rows, ) #should be private null_piece
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
        if rows[start_pos] == "__" #remember to update empty space with nullpiece 
            raise ArgumentError.new("Starting position is not available") 
        end
    end
end