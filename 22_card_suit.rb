# You get any card as an argument. Your task is to return a suit of this card.

# eg:

# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'

def define_suit(card)
  # Good luck
  suits = { C: 'clubs', S: 'spades', D: 'diamonds', H: 'hearts' }
  return suits[card.chars.last.to_sym]
end

