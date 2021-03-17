class Piece
    # attr_reader :board, :pos, :color
    # def inititalize(color, board, pos)
    #     @name = name
    #     @board = board
    #     @pos = pos
    # end
    attr_reader :name, :board, :pos
    def initialize(name,board ,pos)
        @name = name
        @board = board
        @pos = pos
    end

    def moves
        possible_moves = []

    end
end