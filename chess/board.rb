require_relative "./piece.rb"
require_relative "./require.rb"

class Board
    attr_reader :rows
    def self.populate_grid
        @rows = Array.new(8) {Array.new(8, "__")}
        black_first = [Rook.new(:b,@rows, [0,0]),
                    Knight.new(:b, @rows,[0,1]),
                    Bishop.new(:b, @rows,[0,2]),
                    Queen.new(:b, @rows,[0,3]),
                    King.new(:b, @rows, [0,4]),
                    Bishop.new(:b, @rows,[0,5]),
                    Knight.new(:b, @rows,[0,6]),
                    Rook.new(:b, @rows,[0,7])
        ]
        # black_second = Array.new(8) {Pawn.new(:b)}
        white_last = [Rook.new(:w,@rows, [7,0]),
                Knight.new(:w, @rows,[7,1]),
                Bishop.new(:w, @rows,[7,2]),
                Queen.new(:w, @rows,[7,3]),
                King.new(:w, @rows, [7,4]),
                Bishop.new(:w, @rows,[7,5]),
                Knight.new(:w, @rows,[7,6]),
                Rook.new(:w, @rows,[7,7])
        ]
        (0...@rows.length).each do |row|
            (0...@rows[row].length).each do |col|
                # puts pos = [row, col]
                @rows[0]= black_first  
                if row == 1
                    @rows[row][col]= Pawn.new(:b, @rows,[1,col])
                end
                @rows[7]= white_last 
                if row == 6
                    @rows[row][col]= Pawn.new(:w, @rows,[6,col])
                end
                if row > 1 && row < 6
                    @rows[row][col] = NullPiece.instance
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
        # if end_pos.min >= 0 && end_pos.max <= 7
        #     raise ArgumentError.new("Array index out of bounds")
        # end
        # if start_pos.min >= 0 && start_pos.max <= 7
        #     raise ArgumentError.new("Array index out of bounds")
        # end
        if self[start_pos].empty? #remember to update empty space with nullpiece 
            raise ArgumentError.new("No piece at starting position")
        end
        if self[end_pos].color == self[start_pos].color
            raise ArgumentError.new(" Your Piece is already the same color")
        end
        self[end_pos] = self[start_pos]
        self[end_pos].pos= end_pos
        self[start_pos] = NullPiece.instance      #will need to reset to nullpiece
    end

    def valid_pos?(pos)

    end

    def add_piece(piece, pos)

    end

    def checkmate?(color)

    end

    def in_check?(color)

    end

    def find_king(color)

    end

    def pieces
        
    end
    

    def dup

    end

    def move_piece!(color, start_pos, end_pos)

    end
end