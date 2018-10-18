# You have been hired to keep track of the score at baseball games.
# Unfortunately you tend to be rather absent minded because most nights,
# you stay up late playing video games and coding. Let's create a program
# that will keep track of the score for us.
#
# We'll need to create a constructor ScoreCard that has two public functions:
# addEntry and getScore.
#
# addEntry - Takes in the result of an at-bat. This result can be single,
# double, triple, homerun, or out.
#
# getScore - Returns the score in the format Home: [HOME_SCORE] Away: [AWAY_SCORE]
#
# To keep things simple, base runners will advance the amount of bases equal to that of
# the batter's hit (i.e. if the batter hits a double, each base-runner will advance two bases).
#
# A few important baseball rules:
#
# 1. The Away team bats first.
# 2. There are three outs in an inning.
# 3. After three outs the opposing team hits.
# 4. The hits single, double, triple and homerun correspond to the batter reaching bases first, second, third and home respectively.
# 5. Base runners start at home and then cycle through the bases first, second, third and home.
# 6. Runners score for their team after they reach home.
#
# For more information on baseball visit here: http://en.wikipedia.org/wiki/Baseball
#
class Baseball
    def initialize
        # @away = {first: 0, second: 0, third: 0, home: 0, out: 0}
        # @home = {first: 0, second: 0, third: 0, home: 0, out: 0}
        @away = []
        @away_out = 0
        @away_on_field = 0
        @home = []
        @home_out = 0
        @home_on_field = 0
        @batting = @away
        @batting_out = @away_out
        @batting_on_field = @away_on_field
    end    
    # A public method accepting the result of an at-bat
    # @param {string} entry - The result of an at-bat 
    # Acceptable values: ('single', 'double', 'triple', 'homerun' or 'out') 
    def addEntry(entry)
        @batting += 1
        case entry
        when 'single'
            @batting.push((@batting_on_field) * 1)
        when 'double'
            @batting.push((@batting_on_field) * 2)
        when 'triple'
            @batting.
        when 'homerun'
        when 'out'
        end
        # case entry
        # when 'single'
        #     if @batting[:third] == 1
        #         @batting[:home] += 1
        #         @batting[:third] = 0
        #     end
        #     if @batting[:second] == 1
        #         @batting[:third] = 1
        #         @batting[:second] = 0
        #     end
        #     if @batting[:first] == 1
        #         @batting[:second] = 1
        #         @batting[:first] = 0
        #     end
        #     @batting[:first] = 1
        # when 'double'
        #     if @batting[:third] == 1
        #         @batting[:home] += 1
        #         @batting[:third] = 0
        #     end
        #     if @batting[:second] == 1
        #         @batting[:home] += 1
        #         @batting[:second] = 0
        #     end
        #     if @batting[:first] == 1
        #         @batting[:third] = 1
        #         @batting[:first] = 0
        #     end
        #     @batting[:second] = 1
        # when 'triple'
        #     if @batting[:third] == 1
        #         @batting[:home] += 1
        #         @batting[:third] = 0
        #     end
        #     if @batting[:second] == 1
        #         @batting[:home] += 1
        #         @batting[:second] = 0
        #     end
        #     if @batting[:first] == 1
        #         @batting[:home] += 1
        #         @batting[:first] = 0
        #     end
        #     @batting[:third] = 1
        # when 'homerun'
        #     if @batting[:third] == 1
        #         @batting[:home] += 1
        #         @batting[:third] = 0
        #     end
        #     if @batting[:second] == 1
        #         @batting[:home] += 1
        #         @batting[:second] = 0
        #     end
        #     if @batting[:first] == 1
        #         @batting[:home] += 1
        #         @batting[:first] = 0
        #     end
        #     @batting[:home] += 1
        # when 'out'
        #     @batting[:out] += 1
        # end
        # if @batting[:out] == 3
        #     @batting = @home
        # end

    end
    # A public method returning the current score
    # Format: "Home: [HOME_SCORE] Away: [AWAY_SCORE]"
    def to_s
        "Home: #{@home[:home]} Away: #{@away[:home]}"
    end
end
