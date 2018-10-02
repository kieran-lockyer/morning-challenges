require 'test/unit'
require_relative '../26_cipher'

class TestCipher < Test::Unit::TestCase
    def setup
        @cipher5 = CaesarCipher.new(5)
        @cipher3 = CaesarCipher.new(3)
    end
    def test_encode_shift_5
        assert_equal('GWNXGFSJ', @cipher5.encode('Brisbane'))
        assert_equal('BFKKQJX', @cipher5.encode('WAFFLES'))
    end
    def test_encode_shift_3
        assert_equal('EULVEDQH', @cipher3.encode('Brisbane'))
        assert_equal('ZDIIOHV', @cipher3.encode('WAFFLES'))
    end
    def test_decode
        assert_equal('BRISBANE', @cipher5.decode('GWNXGFSJ'))
        assert_equal('WAFFLES', @cipher5.decode('BFKKQJX'))
    end
    def test_decode_shift_3
        assert_equal('BRISBANE', @cipher3.decode('EULVEDQH'))
        assert_equal('WAFFLES', @cipher3.decode('ZDIIOHV'))
    end
    def test_special_chars
        assert_equal("NY'X F XMNKY HNUMJW!!", @cipher5.encode("IT'S A SHIFT CIPHER!!"))
        assert_equal("IT'S A SHIFT CIPHER!!", @cipher5.decode("NY'X F XMNKY HNUMJW!!"))
    end
end

