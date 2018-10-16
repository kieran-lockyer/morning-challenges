require 'test/unit'
require_relative '../extend_array'

class ExtendArrayTests < Test::Unit::TestCase
    def setup
        @array = [1, 2, 3, 4, 5]
    end
    def test_square
        assert_equal([1, 4, 9, 16, 25], @array.square)
    end
    def test_cube
        assert_equal([1, 8, 27, 64, 125], @array.cube)
    end
    def test_sum
        assert_equal(15, @array.sum)
    end
    def test_average
        assert_equal(3, @array.average)
    end
    def test_even
        assert_equal([2,4], @array.even)
    end
    def test_odd
        assert_equal([1,3,5], @array.even)
    end    
    # Teardown is automatically executed after each test method
    def teardown
        # Ensure original array was not changed
        assert_equal([1,2,3,4,5], @array)
    end
end
