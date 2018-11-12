// Write a method that will take an array of numbers,
// and return their sum.
// Test your solution:
// mocha 05_sum_numbers.js

function sumNumber () {
    // Your code here
}

var assert = require('assert');

describe('sumNumber', function() {
    it('Should return the sum number', function() {
        assert.equal(3, sumNumber([1,1,1]));
        assert.equal(117, sumNumber([5,2,100,0,10]));
    })
})
