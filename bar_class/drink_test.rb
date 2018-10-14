require 'test/unit'
require_relative 'water_class'
require_relative 'beer_class'
require_relative 'cocktail_class'
require_relative 'constants'


class DrinkTest < Test::Unit::TestCase

    def setup
        @water = Water.new()
        @beer = Beer.new()
        @cocktail = Cocktail.new()
    end

    def test_water_get_cost
        assert_equal(WATER_COST, @water.cost)
    end

    def test_water_get_price
        assert_equal(WATER_PRICE, @water.price)
    end

    def test_beer_get_cost
        assert_equal(BEER_COST, @beer.cost)
    end

    def test_beer_get_price
        assert_equal(BEER_PRICE, @beer.price)
    end

    def test_cocktail_get_cost
        assert_equal(COCKTAIL_COST, @cocktail.cost)
    end

    def test_cocktail_get_price
        assert_equal(COCKTAIL_PRICE, @cocktail.price)
    end
end