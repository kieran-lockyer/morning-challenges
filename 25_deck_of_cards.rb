# Create a Deck class that uses the Card class you created last time.
#
# Deck functionality
# A deck has a public attribute:
#
# cards: array of remaining cards in the deck.
#
# ...and three public methods:
#
# count(): count of remaining cards in the deck.
#
# shuffle(): randomize the order of the remaining cards in the deck.
#
# draw(n): remove the last n cards from the deck and return them in an array.
#
# Upon initialization, a deck is filled with 52 cards (13 from each of 4 suits).

require_relative '24_card_game'

class Deck
  def initialize
    # Create a new array of cards
  end
  
  def shuffle
    # Shuffle the remaining cards
  end

  def draw(n=1)
    # Draw (remove) n cards from the deck. Return those cards
  end

  def count
    # How many cards are left?
  end
end
