# A slightly different kind of challenge this morning.

# The Company has broken the keyboard on their one and only laptop, so can’t get this bit of code to run. 
# What would the output of this code be (without running it on your own computer)? 

<<<<<<< HEAD
#  def fib(num)
#   if num < 2
#      num
#   else
#      fib(num-1) + fib(num-2)
#   end
# end
# puts fib(4)

# it would put out 1, 0, -1 and -2 a bunch of times.

def fib(num)
    if num < 2
        num
    else
        fib(num-1) + fib(num-2)
    end
end
puts fib(4)

# Turns out it puts out 3, as it's return the output of recursive fib(num-1) + fib(num-2). My error was thinking out would only return if it was less than 2.
=======
 def fib(num_
  if num < 2
     num
  else
     fib(num-1) + fib(num-2)
  end
end
puts fib(4)

# It would output a syntax error due to the underscore instead of a close parenthesis on line 5.
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
