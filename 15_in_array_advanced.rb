# In Array Advanced
#
# Don't use any array helper methods except for .each
#
# This is the same as yesterday's challenge with one improvement.
# in_array_advanced takes an additional boolean argument 'strict'.
# If strict is true, in_array should care about leTteR CasIng.
# If strict is false, in_array should return true for any match.
#
# Difficulty:
# 4/10
#
# Example:
# in_array("HeLLo", ["hi", "howdy", "HeLLo"], true) should return true
# in_array("DrAkE", ["jayz", "kanye", "drake"], false) should return true
<<<<<<< HEAD
# in_array("DrAkE", ["jayz", "kanye", "yachty"], false) should return false
=======
# in_array("DrAkE", ["jayz", "kanye", "yachty"], false) should return flse
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
#
# Check your solution by running the tests:
# ruby tests/08_in_array_advanced_test.rb
#

def in_array_advanced (needle, haystack, strict)
  # Your code here
<<<<<<< HEAD
  for item in haystack
    if item.downcase == needle.downcase && !strict || item == needle && strict
      return true
    end
  end
  return false
end


puts in_array_advanced("HeLLo", ["hi", "howdy", "HeLLo"], true)
puts in_array_advanced("DrAkE", ["jayz", "kanye", "drake"], false)
puts in_array_advanced("DrAkE", ["jayz", "kanye", "yachty"], false)
=======
  
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
