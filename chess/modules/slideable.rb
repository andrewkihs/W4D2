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
        # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
            # and add them to your moves array 
            # (use the `grow_unblocked_moves_in_dir` helper method)

        # return the final array of moves (containing all possible moves in all directions)

    end

    private
    def grow_unblocked_moves_in_dir(dx, dy)
        # create an array to collect moves

        # get the piece's current row and current column

        # in a loop:
        # increment the piece's current row and current column to generate a new position

        # if the new position is:
            # 1. invalid (off the board)
            #   * stop looping; the piece can't go any further in this direction

            # 2. empty
            #   * keep looping; the piece *can* go further in this direction
            #   * add position to moves array

            # 3. occupied
            #   * stop looping; the piece can't go any further in this direction
            #   * if opposite color, add position to moves array
            #   * if same color, don't add position to moves array

        # return the final moves array
    end

    def move_dirs
        # subclass implements this
        raise NotImplementedError 
        #only executes if subclass hasnt implemented #move_dirs
    end
end