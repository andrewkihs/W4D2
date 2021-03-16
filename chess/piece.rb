class Piece
    # attr_reader :board, :pos, :color
    # def inititalize(color, board, pos)
    #     @name = name
    #     @board = board
    #     @pos = pos
    # end
    attr_reader :name, :board, :pos
    def initialize(name)
        @name = name
        @board = board
        @pos = [0,0]
    end
end