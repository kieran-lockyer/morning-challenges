# You get any card as an argument. Your task is to return a suit of this card.

# eg:

# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'

def define_suit(card)
  suit = card[1]
  case suit
  when "C"
    return 'clubs'
  when "D"
    return 'diamonds'
  when "H"
    return 'hearts'
  when "S"
    return 'spades'
  end
end

