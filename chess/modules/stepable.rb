module Stepable
    def moves
      # create array to collect moves
      possible_moves = []
      current_pos = self.pos
      move_dirs.each do |dir|
        new_pos = [current_pos[0]+dir[0], current_pos[1]+dir[1]]
        if new_pos.min >= 0 && new_pos.max <= 7
          if @board[new_pos] == nil || @board[new_pos].color != @color #change to nullpiece
            possible_moves << new_pos
          end
        end
      end
      # iterate through each of the piece's possible move_diffs
        # for each move_diff, increment the piece's position to generate a new position
        # add the new position to the moves array if it is:
          # on the board and empty
          # OR on the board and contains a piece of the opposite color
  
      possible_moves
    end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!