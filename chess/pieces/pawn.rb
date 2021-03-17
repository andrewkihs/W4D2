require_relative '../piece.rb'

class Pawn < Piece
    def symbol
        "♟︎".colorize(color)  
    end

    def moves
        pos_moves = (forward_steps + side_attacks)
    end
    
    private
    def at_start_row?
        (pos[0]==1 && color == "b") || (pos[0] == 6 && color== "w")
    end

    def forward_dir
        if color == :b
            return 1
        elsif color == :w
            return -1
        end
    end

    def forward_steps
        row = pos[0]
        col = pos[1]
        moves = []
        if at_start_row? && @board[(row + forward_dir*2), col] != nil  && @board[(row + forward_dir), col] != nil # change to it later 
            moves += [(row +forward_dir*2),col]   
        end
        if @board[(row + forward_dir), col] != nil    #&&  current_pos.min >= 0 && current_pos.max <= 7
            moves += [(row + forward_dir), col]  
        end
        moves  
    end

    def side_attacks
        x = pos[0]
        y = pos[1]
        moves = []
        if @board[x+forward_dir][y+1].color != color
            moves += [x+forward_dir, y+1]
        end
        if @board[x+forward_dir][y-1].color != color
            moves += [x+forward_dir, y-1]
        end
        moves
    end

end