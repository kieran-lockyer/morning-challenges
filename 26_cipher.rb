# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encode(string)
    result = ""
    string.upcase.each_char do |char|
      if char.ord > 90 or char.ord < 65
        result += char
      else
        if char.ord + @shift <= 90
          result += (char.ord + @shift).chr
        else
          result += (char.ord + @shift - 26).chr
        end
      end
    end
    return result
  end
  
  def decode(string)
    result = ""
    string.upcase.each_char do |char|
      if char.ord > 90 or char.ord < 65
        result += char
      else
        if char.ord - @shift >= 65
          result += (char.ord - @shift).chr
        else
          result += (char.ord - @shift + 26).chr
        end
      end
    end
    return result
  end
end
