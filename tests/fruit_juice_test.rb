require "test/unit"
require_relative "../fruit_juice"

class FruitJuiceTest < Test::Unit::TestCase
    def setup
        # Create a new jug before each test method
        @jug = Jug.new(1000) # 1 litre jug 
    end
    
    # New jug should have a 0 total amount and concentration
    def test_initialization
        assert_equal(0, @jug.getTotalAmount)
        assert_equal(0, @jug.getConcentration('apple'))
    end

    def test_add_one_juice
        @jug.add(200, 'apple')
        assert_equal(200, @jug.getTotalAmount)
        assert_equal(1, @jug.getConcentration('apple'))
    end
    
    def test_add_two_juices
        @jug.add(200, 'apple')
        assert_equal(200, @jug.getTotalAmount)
        assert_equal(1, @jug.getConcentration('apple'))
        @jug.add(200, 'banana')
        assert_equal(400, @jug.getTotalAmount)
        assert_equal(0.5, @jug.getConcentration('apple'))
        assert_equal(0.5, @jug.getConcentration('banana'))
    end
    
    def test_pour_juice
        @jug.add(200, 'apple')
        @jug.add(200, 'orange')
        @jug.pour(300)
        assert_equal(100, @jug.getTotalAmount)
        assert_equal(0.5, @jug.getConcentration('apple'))
        assert_equal(0.5, @jug.getConcentration('orange'))
    end
    
    def test_add_more_juice
        @jug.add(200, 'apple')
        @jug.add(200, 'orange')
        @jug.pour(300)
        @jug.add(100, 'banana')
        assert_equal(200, @jug.getTotalAmount)
        assert_equal(0.25, @jug.getConcentration('apple'))
        assert_equal(0.25, @jug.getConcentration('orange'))
        assert_equal(0.5, @jug.getConcentration('banana'))
    end
    
    def test_ignore_overflow
        @jug.add(500, 'apple')
        @jug.add(750, 'orange')
        assert_equal(1000, @jug.getTotalAmount)
        assert_equal(0.5, @jug.getConcentration('apple'))
        assert_equal(0.5, @jug.getConcentration('orange'))
    end
    
end
