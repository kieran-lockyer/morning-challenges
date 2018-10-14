class Maze
    # List of valid moves, each mapped to a row and column offset hash
    # eg. moving north means going up one row (-1 rows, 0 columns) in the maze array

    def initialize(maze)
        @maze = maze
        # for row in maze
        #     if row.include?(2)
        #         @pos_row = @maze.index(row)
        #         @pos_column = @maze[@maze.index(row)].index(2)
        #     end
        # end

        @pos_row = @maze.index { |row| row.index(2) }
        @pos_column = @maze[@pos_row].index(2)
    end

    def walk(moves)
        for move in moves
            if can_move?(move)
                case @maze[@pos_row][@pos_column]
                when 3
                    return "Finish"
                when 0, 2
                    next
                else
                    return "Dead"
                end
            else
                return "Dead"
            end
        end
        return "Lost"
    end

    def can_move?(direction)
        case direction
        when "N"
            if @pos_row - 1 >= 0
                @pos_row -= 1
                return true
            else
                return false
            end
        when "S"
            if @pos_row + 1 <= @maze.length - 1
                @pos_row += 1
                return true
            else
                return false
            end
        when "E"
            if @pos_column + 1 <= @maze.length - 1
                @pos_column += 1
                return true
            else
                return false
            end
        when "W"
            if @pos_column - 1 >= 0
                @pos_column -= 1
                return true
            else
                return false
            end
        end
    end
end
