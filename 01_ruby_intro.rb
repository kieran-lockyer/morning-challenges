# check which version of ruby you have installed (if it isn’t 2.4.1, then please see a teacher)

# from the command line, create a ruby folder inside of your apps folder (if you haven’t already done so)
# create a file inside the ruby folder called ‘strings’ with the ruby extension


# In IRB calculate — 
#     1. How many hours are in a year.
#     2. How many minutes are in a decade?
#     3. How many seconds old are you?



# What do you think happens when you combine the following floats and integers?
# Is the result a float or an integer?
# Try computing these in irb —
#     1. 3.0 / 2
#     2. 3 / 2.0
#     3. 4 ** 2.0
#     4. 4.1 % 2

irb_1 = 24 * 365
irb_2 = 60 * 24 * 365 * 10
birth_date = Time.new(1987,03,29)
irb_3 = Time.now.to_i - birth_date.to_i

puts "There are #{irb_1} hours in a year."
puts "There are #{irb_2} minutes in a decade."
puts "I am #{irb_3} seconds old."

