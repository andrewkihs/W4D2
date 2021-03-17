class Piece
    attr_reader :board, :pos, :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
    # attr_reader :name, :board, :pos
    # def initialize(name,board ,pos)
    #     @name = name
    #     @board = board
    #     @pos = pos
    # end
    def empty?
        self == NullPiece
    end
    def moves
        possible_moves = []

    end
    def to_s
        "#{symbol}"
    end

    def valid_moves

    end

    def pos=(value)
        @pos = value
    end

    def symbol
        @color
    end

    private

    def move_into_check?(end_pos)

    end
end