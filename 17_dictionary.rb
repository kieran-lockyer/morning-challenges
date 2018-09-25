# Dictionary
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 4/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A previous stone'
#
# Check your solution by running the tests:
# ruby tests/10_dictionary_test.rb
#

class Dictionary
<<<<<<< HEAD
  def initialize()
    @words = {}
  end

  def add_word(word, definition)
    @words[word] = definition
    message = "#{word} added to dictionary."
  end

  def lookup(word)
    if @words[word]
      return @words[word]
    else
      return "#{word} not added to dictionary"
    end
  end

  def total_words
    return @words.keys.count
  end
end

dictionary = Dictionary.new
dictionary.add_word('ruby', 'A precious stone')
puts dictionary.total_words
puts dictionary.lookup('ruby')
=======
  def initialize
    @words = {}      
  end
  def add_word(key, val)
    @words[key] = val
  end
  def total_words
    @words.length
  end
  def lookup(key)
    @words[key]
  end
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
