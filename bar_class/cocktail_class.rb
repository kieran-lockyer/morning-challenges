require_relative 'drink_class'
require_relative 'constants'


class Cocktail < Drink
    def initialize()
        @name = "Cocktail"
        @cost = COCKTAIL_COST
        @price = COCKTAIL_PRICE
    end
end