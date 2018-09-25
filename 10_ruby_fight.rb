<<<<<<< HEAD
# The Company has two directors who are passionately disagreeing, they want to fight it out. Being the 
# fantastic human you are, you propose creating a virtual fight to minimise physical harm.
# You need to create a simple fighting game, where two opponents will fight until one of them loses.

# Hints: start by creating a Player class (the instance variables could be name, health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is alive, another one that 
# calculates the impact of hits (decreases the opponents heath by the the amount of the other players power). 
# And a third that outputs the players information.

# You’ll then need to make a fight method that uses a loop to make the players hit one another until  the is 
# alive method returns false for one of them. When the loop is finished (which would mean one of the players 
# has lost), show the players output.

# Then create two Player objects (create a random value for each player’s health and power, make is so that 
# the maximum health value for a player is 200, and the maximum power value is 25) and call the fight method.

class Player
    attr_accessor :name, :health, :power
    def initialize(name, health = rand(100..200), power = rand(10..25))
        @name = name
        @health = health
        @power = power
    end

    def info
        puts "Player: #{@name}"
        puts "Health: #{@health}"
        puts "Power: #{@power}"
    end

    def is_alive
        unless health > 0
            false
        else
            true
        end
    end
end

def fight(player_1, player_2)
    player_1.info
    player_2.info
    until !player_1.is_alive or !player_2.is_alive
        attack = player_1.power * rand(0.0..1.0).round(1)
        puts "#{player_1.name} attacks #{player_2.name} for #{attack} damage."
        player_2.health -= attack
        puts "#{player_2.name}'s Health is #{player_2.health}."
        attack = player_2.power * rand(0..1)
        puts "#{player_2.name} attacks #{player_1.name} for #{attack} damange."
        player_1.health -= player_2.power * rand(0.0..1.0).round(1)
        puts "#{player_1.name}'s Health is #{player_1.health}."
    end
    player_1.is_alive ? (puts "#{player_1.name} is victorious!") : (puts "#{player_2.name} is victorious!")
end

fight(Player.new("Jeff"), Player.new("Bob"))
=======
The Company has two directors who are passionately disagreeing, they want to fight it out. Being the fantastic human you are, you propose creating a virtual fight to minimise physical harm.
You need to create a simple fighting game, where two opponents will fight until one of them loses.

Hints: start by creating a Player class (the instance variables could be name, health and power).
You’ll need a few methods, consider one that keeps track of whether a player is alive, another one that calculates the impact of hits (decreases the opponents heath by the the amount of the other players power). And a third that outputs the players information.

You’ll then need to make a fight method that uses a loop to make the players hit one another until  the is alive method returns false for one of them. When the loop is finished (which would mean one of the players has lost), show the players output.

Then create two Player objects (create a random value for each player’s health and power, make is so that the maximum health value for a player is 200, and the maximum power value is 25) and call the fight method.
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
