class Maze
    # List of valid moves, each mapped to a row and column offset hash
    # eg. moving north means going up one row (-1 rows, 0 columns) in the maze array
    @@valid_moves = {
        'N': { row: -1, col: 0 },
        'S': { row: 1, col: 0 },
        'E': { row: 0, col: 1 },
        'W': { row: 0, col: -1 }
    }

    def initialize(maze)
        @maze = maze
<<<<<<< HEAD
        for row in maze
            if row.include?(2)
                @pos_row = @maze.index(row)
                @pos_column = @maze[@maze.index(row)].index(2)
            end
        end
=======
        # Find the start location (element with value 2)
        # First find the row that includes the value 2
        start_row = maze.find { |row| row.include?(2) }
        # Construct player position hash from column and row indexes
        @player_position = { col: start_row.index(2), row: maze.index(start_row) }
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end

    def walk(moves)
<<<<<<< HEAD
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
=======
        for move in moves do
            # Convert move to symbol so we can use it to reference @@valid_moves
            move = move.to_sym
            # Ignore invalid moves
            if @@valid_moves[move]
                # Adjust the player position according to the direction moved
                @player_position[:col] += @@valid_moves[move][:col]
                @player_position[:row] += @@valid_moves[move][:row]
                # Get the value at the new location in the maze
                # This will fail if we're outside the maze, triggering the rescue clause
                value = @maze[@player_position[:row]][@player_position[:col]]
                # Hit a wall?
                return 'Dead' if value == 1
                # Reached the exit?
                return 'Finish' if value == 3
            end
        end
        # If we didn't finish or die, then we're lost!
        'Lost'
    rescue
        'Dead'
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end
end
