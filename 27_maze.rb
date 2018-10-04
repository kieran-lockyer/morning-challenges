class Maze
    def initialize(maze)
        @maze = maze
        for row in maze
            if row.include?(2)
                @start_row = @maze.index(row)
                @start_column = @maze[@maze.index(row)].index(2)
            elsif row.include?(3)
                @end_row = @maze.index(row)
                @end_column = @maze[@maze.index(row)].index(3)
            end
        end
        @start = [@start_row, @start_column]
        @end = [@end_row, @end_column]
        @status = "Lost"
        @position = [@start_row, @start_column]
    end

    def walk(moves)
        if @status != "Lost"
            @position = [@start_row, @start_column]
        end
        puts "Starting stats"
        puts "start #{@start.inspect}"
        puts "end #{@end.inspect}"
        puts "status #{@status}"
        puts "position #{@position.inspect}"
        puts "position == start: #{@position == @start}"
        puts "---------------------------------------------------------"
        for move in moves
            can_move?(move)
            case @maze[@position[0]][@position[1]]
            when 3
                if @status != "Dead"
                    @status = "Finish"
                end
            when 1
                @status = "Dead"
            end
        end
        puts "Ending stats"
        puts "start #{@start.inspect}"
        puts "end #{@end.inspect}"
        puts "status #{@status}"
        puts "position #{@position.inspect}"
        puts "position == start: #{@position == @start}"
        puts "---------------------------------------------------------"
        return @status
    end

    def can_move?(direction)
        case direction
        when "N"
            test_ground = [@position[0] - 1, @position[1]]
            for ground in test_ground
                if ground < @maze.length or ground > 0
                    @position[0] = @position[0] - 1
                    return true
                else
                    @status = "Dead"
                    return false
                end
            end
        when "S"
            test_ground = [@position[0] + 1, @position[1]]
            for ground in test_ground
                if ground < @maze.length or ground > 0
                    @position[0] = @position[0] + 1
                    return true
                else
                    @status = "Dead"
                    return false
                end
            end
        when "E"
            test_ground = [@position[0], @position[1] + 1]
            for ground in test_ground
                if ground < @maze.length or ground > 0
                    @position[1] = @position[1] + 1
                    return true
                else
                    @status = "Dead"
                    return false
                end
            end
        when "W"
            test_ground = [@position[0], @position[1] - 1]
            for ground in test_ground
                if ground < @maze.length or ground > 0
                    @position[1] = @position[1] - 1
                    return true
                else
                    @status = "Dead"
                    return false
                end
            end
        end
    end
end
