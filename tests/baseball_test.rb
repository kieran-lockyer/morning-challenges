require 'test/unit'
require_relative '../baseball'

class BaseballTests < Test::Unit::TestCase
    def setup
        @baseball = Baseball.new
    end
    def test_starting_score
        assert_equal('Home: 0 Away: 0', @baseball.to_s)
    end
    def test_homerun
        @baseball.addEntry('homerun')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('homerun')
        assert_equal('Home: 0 Away: 2', @baseball.to_s)
    end
    def test_game
        # Away innings
        @baseball.addEntry('homerun')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('out')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('triple')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('double')
        assert_equal('Home: 0 Away: 2', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 0 Away: 2', @baseball.to_s)
        @baseball.addEntry('out')
        assert_equal('Home: 0 Away: 2', @baseball.to_s)
        @baseball.addEntry('double')
        assert_equal('Home: 0 Away: 3', @baseball.to_s)
        @baseball.addEntry('out')
        assert_equal('Home: 0 Away: 3', @baseball.to_s)
        # Home innings
        @baseball.addEntry('homerun')
        assert_equal('Home: 1 Away: 3', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 1 Away: 3', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 1 Away: 3', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 1 Away: 3', @baseball.to_s)
        @baseball.addEntry('homerun')
        assert_equal('Home: 5 Away: 3', @baseball.to_s)
        @baseball.addEntry('double')
        assert_equal('Home: 5 Away: 3', @baseball.to_s)
        @baseball.addEntry('triple')
        assert_equal('Home: 6 Away: 3', @baseball.to_s)
    end
    def test_out
        @baseball.addEntry('homerun')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('out')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
    end
    def test_triples
        @baseball.addEntry('triple')
        assert_equal('Home: 0 Away: 0', @baseball.to_s)
        @baseball.addEntry('triple')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('triple')
        assert_equal('Home: 0 Away: 2', @baseball.to_s)
    end
    def test_doubles
        @baseball.addEntry('double')
        assert_equal('Home: 0 Away: 0', @baseball.to_s)
        @baseball.addEntry('double')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
    end
    def test_singles
        @baseball.addEntry('single')
        assert_equal('Home: 0 Away: 0', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 0 Away: 0', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 0 Away: 0', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 0 Away: 1', @baseball.to_s)
        @baseball.addEntry('single')
        assert_equal('Home: 0 Away: 2', @baseball.to_s)
    end
end
