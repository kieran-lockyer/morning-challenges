# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/09_unique_test.rb
#

# def unique (mylist)
#   result = []
#   for item in mylist
#     unless result.include?(item)
#       result.push(item)
#     end
#   end
#   return result
# end

# def unique (mylist)
#   result = []
#   for item in mylist
#     found = false
#     for thing in result
#       if thing == item
#         found = true
#       end
#     end
#     unless found
#       result.push(item)
#     end
#   end
#   return result
# end

# def unique (mylist)
#   result = {}
#   for item in mylist
#     result[item] = 1 + (result[item] || 0)
#   end
#   return result.keys
# end

puts unique([1,2,3,3])
puts unique(["tom", "tom", "tom"])