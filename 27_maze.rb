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
        # Find the start location (element with value 2)
        # First find the row that includes the value 2
        start_row = maze.detect{|row| row.include?(2)}
        # Construct player position from column and row indexes
        @player_position = { col: start_row.index(2), row: maze.index(start_row) }
        puts "Player start: #{@player_position.inspect}"
    end
    def walk(moves)
        for move in moves
            # Ignore invalid moves
            if @@valid_moves[move]
                # Adjust the player position according to the direction moved
                @player_position[:col] += @@valid_moves[move.to_s][:col]
                @player_position[:row] += @@valid_moves[move.to_s][:row]
                puts "Player: #{@player_position.inspect}"
                # Get the value at the new location in the maze
                value = @maze[@player_position[:row]][@player_position[:col]]
                # Hit a wall or fell off the edge?
                return 'Dead' if [1, nil].include?(value)
                # Reached the exit?
                return 'Finished' if value == 3
            end
        end
        # If we didn't finish or die, then we're lost!
        'Lost'
    end
end
