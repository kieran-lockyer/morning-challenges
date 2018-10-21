# Create a RomanNumerals class that can convert a roman numeral to and
# from an integer value. It should follow the API demonstrated in the examples below.
# Multiple roman numeral values will be tested for each helper method.
#
# Modern Roman numerals are written by expressing each digit separately,
# starting with the left most digit and skipping any digit with a value of zero.
# In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC.
# 2008 is written as 2000=MM, 8=VIII; or MMVIII.
# 1666 uses each Roman symbol in descending order: MDCLXVI.
#
# Examples
#   RomanNumerals.to_roman(1000) # should return 'M'
#   RomanNumerals.from_roman('M') # should return 1000
#
# Help
#   Symbol	Value
#   I	    1
#   V	    5
#   X	    10
#   L	    50
#   C	    100
#   D	    500
#   M	    1000
#
class RomanNumerals
    @values = {
        "M": 1000,
        "CM": 900,
        "D": 500,
        "CD": 400,
        "C": 100,
        "XC": 90,
        "L": 50,
        "XL": 40,
        "X": 10,
        "IX": 9,
        "V": 5,
        "IV": 4,
        "I": 1
    }
    def self.fromRoman(number)
        result = 0
        last_num = 0
        for numeral in number.split("").reverse
            if @values[numeral.to_sym] >= last_num
                result += @values[numeral.to_sym]
                last_num = @values[numeral.to_sym]
            else
                result -= @values[numeral.to_sym]
            end
        end
        return result
    end
    def self.toRoman(number)
        result = ""
        for roman, int in @values
            if int <= number
                while int <= number
                    number -= int
                    result += roman.to_s
                end
            end
        end
        return result
    end
end
