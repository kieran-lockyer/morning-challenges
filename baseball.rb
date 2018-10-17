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
    end    
    # A public method accepting the result of an at-bat
    # @param {string} entry - The result of an at-bat 
    # Acceptable values: ('single', 'double', 'triple', 'homerun' or 'out') 
    def addEntry(entry)
    end
    # A public method returning the current score
    # Format: "Home: [HOME_SCORE] Away: [AWAY_SCORE]"
    def to_s
    end
end
