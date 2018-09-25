require 'test/unit'
require_relative '../22_card_suit'

class CardSuitTest < Test::Unit::TestCase
  def test_suits
    assert_equal(define_suit('3C'), 'clubs');
    assert_equal(define_suit('QS'), 'spades')
    assert_equal(define_suit('9D'), 'diamonds')
    assert_equal(define_suit('JH'), 'hearts')
  end
  def test_invalid_suit
    assert_equal(define_suit('JX'), nil)
  end
end
