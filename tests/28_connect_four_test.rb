require 'test/unit'
require_relative '../28_connect_four'

class Connect4Tests < Test::Unit::TestCase
    def setup
        @game = Connect4.new
    end
    def test_alternates_players
        assert_equal("Player 1 has a turn", @game.play(0))
        assert_equal("Player 2 has a turn", @game.play(0))
    end
    def test_player_wins
        assert_equal("Player 1 has a turn", @game.play(0))
        assert_equal("Player 2 has a turn", @game.play(1))
        assert_equal("Player 1 has a turn", @game.play(0))
        assert_equal("Player 2 has a turn", @game.play(1))
        assert_equal("Player 1 has a turn", @game.play(0))
        assert_equal("Player 2 has a turn", @game.play(1))
        assert_equal("Player 1 wins!", @game.play(0))
    end
    def test_column_full
        assert_equal("Player 1 has a turn", @game.play(4))
        assert_equal("Player 2 has a turn", @game.play(4))
        assert_equal("Player 1 has a turn", @game.play(4))
        assert_equal("Player 2 has a turn", @game.play(4))
        assert_equal("Player 1 has a turn", @game.play(4))
        assert_equal("Player 2 has a turn", @game.play(4))
        assert_equal("Column full!", @game.play(4))
    end
    def test_game_ended
        assert_equal("Player 1 has a turn", @game.play(1))
        assert_equal("Player 2 has a turn", @game.play(1))
        assert_equal("Player 1 has a turn", @game.play(2))
        assert_equal("Player 2 has a turn", @game.play(2))
        assert_equal("Player 1 has a turn", @game.play(3))
        assert_equal("Player 2 has a turn", @game.play(3))
        assert_equal("Player 1 wins!", @game.play(4))
        assert_equal("Game has finished!", @game.play(4))
    end
end
