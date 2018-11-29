var assert = require('chai').assert
let persistence = require('../10_number_persistence.js')

describe('10 Persistence Initial Tests', function () {
    it('Should return a single digit number', function () {
        assert.equal(persistence(39), 3);
        assert.equal(persistence(25), 2);
        assert.equal(persistence(999), 4);
    })
    it('Should return zero if num is a one digit number', function () {
        assert.equal(persistence(4), 0);
        assert.equal(persistence(9), 0);
    })
    it('Should return even on a huge number', function () {
        assert.equal(persistence(250324), 1);
        assert.equal(persistence(982374), 2);
    })
});