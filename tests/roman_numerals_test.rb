require 'test/unit'
require_relative '../roman_numerals'

class RomanNumeralsTests < Test::Unit::TestCase
    def test_decimal_to_roman
        assert_equal('I', RomanNumerals.toRoman(1))
        assert_equal('IV', RomanNumerals.toRoman(4))
        assert_equal('VI', RomanNumerals.toRoman(6))
        assert_equal('XIV', RomanNumerals.toRoman(14))
        assert_equal('XXI', RomanNumerals.toRoman(21))
        assert_equal('LXXXIX', RomanNumerals.toRoman(89))
        assert_equal('XCI', RomanNumerals.toRoman(91))
        assert_equal('CMLXXXIV', RomanNumerals.toRoman(984))
        assert_equal('M', RomanNumerals.toRoman(1000))
        assert_equal('MDCCCLXXXIX', RomanNumerals.toRoman(1889))
        assert_equal('MCMLXXXIX', RomanNumerals.toRoman(1989))
    end
    def test_roman_to_decimal
        assert_equal(1, RomanNumerals.fromRoman('I'))
        assert_equal(4, RomanNumerals.fromRoman('IV'))
        assert_equal(6, RomanNumerals.fromRoman('VI'))
        assert_equal(14, RomanNumerals.fromRoman('XIV'))
        assert_equal(21, RomanNumerals.fromRoman('XXI'))
        assert_equal(89, RomanNumerals.fromRoman('LXXXIX'))
        assert_equal(91, RomanNumerals.fromRoman('XCI'))
        assert_equal(984, RomanNumerals.fromRoman('CMLXXXIV'))
        assert_equal(1977, RomanNumerals.fromRoman('MCMLXXVII'))
        assert_equal(1995, RomanNumerals.fromRoman('MCMXCV'))
    end
end
