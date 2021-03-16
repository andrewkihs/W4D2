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

    def move_piece(color = nil, start_pos, end_pos)
        # if start_pos.any? {|int| int>7 || int<0}
        #     raise ArgumentError.new("Array index out of bounds")
        # end
        # if end_pos[0]>7 || end_pos[1]<0
        #     raise ArgumentError.new("Array index out of bounds")
        # end
        if self[start_pos].nil? #remember to update empty space with nullpiece 
            raise ArgumentError.new("No piece at starting position")
        end
        if self[end_pos]!=nil
            raise ArgumentError.new("Piece is already at a point")
        end
        self[end_pos] = self[start_pos]
        self[start_pos] = nil      #will need to reset to nullpiece
    end
end