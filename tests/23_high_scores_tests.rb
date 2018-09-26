require 'test/unit'
require_relative '../23_high_scores'

class CardSuitTest < Test::Unit::TestCase
    
    # Initialize a high score table with a limit of 3 scores
    @@high_scores = HighScoreTable.new(3)

    def test_empty
        assert_equal(@@high_scores.scores, [])
    end
    def test_add_one_score
        @@high_scores.update(10)
        assert_equal(@@high_scores.scores, [10])
    end
    def test_add_multiple_scores
        @@high_scores.update(8)
        @@high_scores.update(12)
        assert_equal(@@high_scores.scores, [12, 10, 8])
        @@high_scores.update(5)
        assert_equal(@@high_scores.scores, [12, 10, 8])
    end
    def test_add_duplicate_scores
        @@high_scores.update(10)
        assert_equal(@@high_scores.scores, [12, 10, 10])
        @@high_scores.update(10)
        assert_equal(@@high_scores.scores, [12, 10, 10])
        @@high_scores.update(20)
        assert_equal(@@high_scores.scores, [20, 12, 10])
        @@high_scores.update(20)
        assert_equal(@@high_scores.scores, [20, 20, 12])
        @@high_scores.update(20)
        assert_equal(@@high_scores.scores, [20, 20, 20])
    end
    def test_reset_scores
        @@high_scores.reset()
        assert_equal(@@high_scores.scores, [])
    end
end
