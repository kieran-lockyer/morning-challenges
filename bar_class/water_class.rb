require_relative 'drink_class'
require_relative 'constants'

class Water < Drink
    def initialize()
        @name = "Water"
        @cost = WATER_COST
        @price = WATER_PRICE
    end
end