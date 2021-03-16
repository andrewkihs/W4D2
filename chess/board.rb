require_relative "./piece.rb"
class Board
    attr_reader :rows
    def self.populate_grid
        @rows = Array.new(8) {Array.new(8, "__")}
        (0...@rows.length).each do |row|
            (0...@rows[0].length).each do |col|
                # puts pos = [row, col]
                if row < 2 || row >= 6

                    @rows[row][col] = Piece.new("test", 'test', [row,col])
                else
                    @rows[row][col] = nil
                end
            end
        end
        return @rows
    end
    
    def initialize
        @rows = self.class.populate_grid
     
    end

    def [](pos)
        row, col = pos[0], pos[1]
        @rows[row][col]
    end

    def []=(pos, val)
        row, col = pos[0], pos[1]
        @rows[row][col] = val
    end

    def move_piece(color, start_pos, end_pos)
        if rows[start_pos] == "__" #remember to update empty space with nullpiece 
            raise ArgumentError.new("Starting position is not available") 
        end
    end
end