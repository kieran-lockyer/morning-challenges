# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have

commute_time = 50
commute_desc = "I took the bus to class and it took me 50 minutes."
puts commute_desc

drinks = ["cocktails", "waters", "beers"]
quantity = [3, 2, 6]
cost = [8, 0.15, 3]
price = [22, 6, 12]

print "What drink would you like: "
choice = gets.chomp
case choice
when "cocktail"
    quantity[drinks.index("cocktails")] += 1
when "water"
    quantity[drinks.index("waters")] += 1
when "beer"
    quantity[drinks.index("beers")] += 1
else
    puts "We only serve cocktails, beer or water."
end

drinks.each do |drink|
    puts "#{quantity[drinks.index(drink)]} #{drink}"
end

profit = 0

3.times do |x|
    puts "Profit for #{drinks[x]} is #{quantity[x]} * (#{price[x]} - #{cost[x]}) = #{quantity[x] * (price[x] - cost[x])}"
    profit += quantity[x] * (price[x] - cost[x])
end
    
puts "Total profit is $#{"%.2f" % profit}"
