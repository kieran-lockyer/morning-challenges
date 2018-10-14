require_relative 'drink_class'
require_relative 'constants'

class Beer < Drink
    def initialize()
        @name = "Beer"
        @cost = BEER_COST
        @price = BEER_PRICE
    end
end