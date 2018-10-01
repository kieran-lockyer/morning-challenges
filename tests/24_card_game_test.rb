require 'test/unit'
require_relative '../24_card_game'

class CardGame < Test::Unit::TestCase
    def setup
        @queen_of_spades = Card.new(:spades, 12)
        @ten_of_clubs = Card.new(:clubs, 10)
        @ace_of_diamonds = Card.new(:diamonds, 1)
        @ace_of_spades = Card.new(:spades, 1)
    end
    def test_get_suit 
        assert_equal(:spades, @queen_of_spades.suit)
        assert_equal(:clubs, @ten_of_clubs.suit)
    end
    def test_get_rank
        assert_equal(12, @queen_of_spades.rank)
        assert_equal(10, @ten_of_clubs.rank)
    end
    def test_is_face_card
        assert_true(@queen_of_spades.face_card?)
        assert_false(@ten_of_clubs.face_card?)
    end
    def test_to_string
        # Face cards (and ace) should return a word for the rank
        assert_equal("Queen of Spades", @queen_of_spades.to_s)
        assert_equal("Ace of Diamonds", @ace_of_diamonds.to_s)
        # Non-face cards should return an integer for the rank
        assert_equal("10 of Clubs", @ten_of_clubs.to_s)
    end
    def test_comparable
        # You will need to make the Card class Comparable to make this work
        # Ref: https://docs.ruby-lang.org/en/2.5.0/Comparable.html
        assert_operator(@queen_of_spades, :>, @ten_of_clubs)
    end
    def test_ace_high_low
        assert_operator(@ace_of_spades.ace_high_or_low, :>, @ace_of_diamonds)
    end
end

