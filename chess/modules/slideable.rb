module Slideable
                    #   right  left     down    up
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1, 0], [-1,0]].freeze
                    # DR      DL      UR      UL
    DIAGONAL_DIRS = [[1,1], [1,-1], [-1, 1], [-1,-1]].freeze

    def horizontal_dirs
        #getter for HORIZONTAL_DIRS
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        # getter for DIAGONAL_DIRS
        DIAGONAL_DIRS
    end

    # should return an array of places a Piece can move to
    def moves
         # create array to collect moves
        possible_moves = []
        move_dirs.each do |dir|
            possible_moves += grow_unblocked_moves_in_dir(dir[0],dir[1])
        end
        # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
            # and add them to your moves array 
            # (use the `grow_unblocked_moves_in_dir` helper method)

        # return the final array of moves (containing all possible moves in all directions)
        possible_moves
    end

    private
    def grow_unblocked_moves_in_dir(dx, dy) 
        # create an array to collect moves
        moves = []
        # get the piece's current row and current column
        current_pos = self.pos

     
        # increment the piece's current row and current column to generate a new position
        current_pos[0] += dx
        current_pos[1] += dy
        until @board[current_pos] != nil #change to NullPiece later
        # if the new position is:
            if current_pos.min >= 0 && current_pos.max <= 7 #if valid
                moves << current_pos
            else #invalid (off the board)
                break
            end
            current_pos[0] += dx
            current_pos[1] += dy

        end
        moves << current_pos if @board[current_pos].color != @color
        moves
    end

    def move_dirs
        # subclass implements this
        raise NotImplementedError 
        #only executes if subclass hasnt implemented #move_dirs
    end
end