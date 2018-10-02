require 'test/unit'
require_relative '../25_deck_of_cards'

class DeckOfCards < Test::Unit::TestCase
    def setup
        @deck = Deck.new
    end
    # Can create a new Deck
    def test_create_deck
        assert_not_nil(@deck)
    end
    # New deck should have 52 cards
    def test_initial_card_count 
        assert_equal(52, @deck.count)
        assert_equal(52, @deck.cards.length)
    end
    # count() method should return the actual length of the cards array
    def test_card_length_equals_card_count 
        assert_equal(@deck.cards.length, @deck.count)
    end
    # Should return 1 card, leaving 51 in deck
    def test_draw_one_card
        cards = @deck.draw
        assert_equal(51, @deck.count)
        assert_equal(1, cards.length)
    end
    # Should return 4 cards, leaving 48 in deck
    def test_draw_several_cards
        cards = @deck.draw(4)
        assert_equal(48, @deck.count)
        assert_equal(4, cards.length)
    end
    # Shuffled deck should not equal initial deck
    def test_shuffle
        new_deck = Deck.new
        @deck.shuffle
        assert_not_equal(new_deck.cards, @deck.cards)
    end
end

