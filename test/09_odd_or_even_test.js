var assert = require('assert');
let oddOrEven = require('../09_odd_or_even')

describe('9 oddOrEven', function () {
    it('Should "odd" or "even" depending on the number', function () {
        assert.equal(oddOrEven([0]), 'even');
        assert.equal(oddOrEven([1]), 'odd')
        assert.equal(oddOrEven([]), 'even')
    });
    it('Even tests', function () {
        assert.equal(oddOrEven([0, 1, 5]), 'even')
        assert.equal(oddOrEven([0, 1, 3]), 'even')
        assert.equal(oddOrEven([1023, 1, 2]), 'even')
    });
    it('Negative Even tests', function () {
        assert.equal(oddOrEven([0, -1, -5]), 'even')
        assert.equal(oddOrEven([0, -1, -3]), 'even')
        assert.equal(oddOrEven([-1023, 1, -2]), 'even')
    });
    it('Odd tests', function () {
        assert.equal(oddOrEven([0, 1, 2]), 'odd')
        assert.equal(oddOrEven([0, 1, 4]), 'odd')
        assert.equal(oddOrEven([1023, 1, 3]), 'odd')
    });
    it('Negative Odd tests', function () {
        assert.equal(oddOrEven([0, -1, 2]), 'odd')
        assert.equal(oddOrEven([0, 1, -4]), 'odd')
        assert.equal(oddOrEven([-1023, -1, 3]), 'odd')
    });
});