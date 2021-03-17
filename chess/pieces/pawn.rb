require_relative '../piece.rb'

class Pawn < Piece
    def symbol
        "".colorize(color)
    end

    def moves

    end
    
    private
    def at_start_row?
        pos[0]==1 || pos[0] == 6
    end

    def forward_dir
        if color == :b
            return 1
        elsif color == :w
            return -1
        end
    end

    def forward_steps
        moves = []
        if at_start_row?
            moves << [forward_dir*2]   
        end
        moves << forward_dir
        moves
    end

    def side_attacks
        x = pos[0]
        y = pos[1]
        moves = []
        if @board[x+forward_dir][y+1].color != color
            moves << [x+forward_dir, y+1]]
        end
        if @board[x+forward_dir][y-1].color != color
            moves << [x+forward_dir, y-1]]
        end
        moves
    end

end