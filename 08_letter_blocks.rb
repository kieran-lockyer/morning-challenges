# *Quiz Letter blocks*
# You are given a collection of ABC blocks. Just like the ones you had when you were a kid. There are twenty 
# blocks with two letters on each block. You are guaranteed to have a complete alphabet amongst all sides of 
# the blocks. The sample blocks are:

# If you test these words, these results will happen:
# can_make_word("A")
# # => true
# can_make_word("BARK")
# # => true
# can_make_word("BOOK")
# # => false
# can_make_word("TREAT")
# # => true
# can_make_word("COMMON")
# # => false
# can_make_word("SQUAD")
# # => true
# can_make_word("CONFUSE")
# # => true
# can_make_word("BOUGHT")
# # => false
# Write a program in ruby that evaluates can_make_word
# Extension
# Use the lots_of_words.txt file to test your code.
# Now order the words that can be made by length.

require 'test/unit'

class Block
    attr_reader :displayed_letter

    def initialize(letter_1, letter_2)
        @letter_1 = letter_1
        @letter_2 = letter_2
        @displayed_letter = letter_1
    end

    def rotate_block
        if @displayed_letter == @letter_1
            @displayed_letter = @letter_2
        else
            @displayed_letter = @letter_1
        end
        self
    end
end

class Alphabet
    def initialize(blocks)
        @blocks = blocks
    end

    def can_make_word(word)
        copy_blocks = Array.new(@blocks)
        result = ""
        for letter in word.split("")
            for block in copy_blocks
                if letter == block.displayed_letter || letter == block.rotate_block.displayed_letter
                    result += letter
                    copy_blocks.delete(block)
                    break
                end
            end
        end
        if result == word
            return true
        else
            return false
        end
    end
end


# @blocks.map! {|block| Block.new(block[0], block[1])}

# blocks = Alphabet.new(blocks)

# puts blocks.can_make_word("COMMON")
# puts blocks.can_make_word("CONFUSE")

class WordTest < Test::Unit::TestCase
    def test_can_make_a
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(true, blocks.can_make_word("A"))
    end
    def test_can_make_bark
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(true, blocks.can_make_word("BARK"))
    end
    def test_can_make_book
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(false, blocks.can_make_word("BOOK"))
    end
    def test_can_make_treat
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(true, blocks.can_make_word("TREAT"))
    end
    def test_can_make_common
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(false, blocks.can_make_word("COMMON"))
    end
    def test_can_make_squad
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(true, blocks.can_make_word("SQUAD"))
    end
    def test_can_make_confuse
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(true, blocks.can_make_word("CONFUSE"))
    end
    def test_can_make_bought
        blocks = Alphabet.new([['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],['R','E'],['T','G'],['Q','D'],['F','S'],['J','W'],['H','U'],['V','I'],['A','N'],['E','R'],['F','S'],['L','Y'],['P','C'],['Z','M'],].map {|block| Block.new(block[0], block[1])})
        assert_equal(false, blocks.can_make_word("BOUGHT"))
    end
end

