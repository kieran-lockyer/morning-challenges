# First Non-repeated
#
# Write a method that will find the first non-repeated
# character in a String. Return false if only repeats
# are found.
#
# *** Whiteboard this first! ***
#
# Pro tip: code quality is a a big deal to potential
# employers. Use smart variable names, keep an eye on
# indentation and be consistent in your decisions
# (e.g. stick to single or double quotes)
#
# Difficulty: ~6/10 (Varies depending on solution. 
# The more optimised the solution, the more difficult
# the algorithm.)
#
# Beast mode: can you return on the first non-repeat,
# without checking every other letter?
#
# Beat mode++: can you maintain linear time?
#
# Example:
# firstNonRepeat('aaaabbbcccdeeefgh') -> 'd'
# firstNonRepeat('wwwhhhggge') -> 'e'
# firstNonRepeat('awwwhhhggge') -> 'a'
# firstNonRepeat('wwwhhhggg') -> false
#
# Check your solution by running the tests:
# ruby tests/13_first_non_repeated_test.rb
#

<<<<<<< HEAD
# def firstNonRepeat (string)
#   puts "non deleter"
#   steps = 0
#   string.each_char { |char|
#     steps += 1
#     if string.count(char) == 1
#       steps += 1
#       puts steps
#       return char
#     end
#   }
#   steps += 1
#   puts steps
#   return false
# end

def firstNonRepeat (string)
  puts "deleter"
  steps = 1
  string_array = string.split("")
  string_array.count.times do
    steps += 1
    if string_array.count(string_array[0]) == 1
      steps += 1
      puts steps 
      return string_array[0]
    else
      steps += 1
      string_array.delete(string_array[0])
    end
  end
  steps += 1
  puts steps
  return false
end

puts firstNonRepeat('aaaabbbcccdeeefgh')
puts firstNonRepeat('wwwhhhggge')
puts firstNonRepeat('awwwhhhggge')
puts firstNonRepeat('wwwhhhggg')
=======
def firstNonRepeat (string)
  string.chars.each { |x| return x if string.count(x) == 1 }
  false
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
