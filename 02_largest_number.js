/*
Largest Number
Write a method that will take an array of numbers
and return whichever is the largest.

Test your solution:
mocha 02_largest_number.js
(You'll need mocha installed first: `npm install mocha -g`)
*/

function largestNumber(arr) {
    let largest = Number.NEGATIVE_INFINITY;
    for (let num of arr) {
        if (num != NaN && num > largest) largest = num;
    }
    return largest === Number.NEGATIVE_INFINITY ? null : largest;
}

var assert = require('assert');

describe('largestNumber', function () {
    it('should return the largest number', function () {
        assert.equal(10, largestNumber([5, -2, 10]));
    })
    it('should ignore invalid array entries', function () {
        assert.equal(10, largestNumber([10, 10, 's']));
    })
    it('should return null if the array is empty', function () {
        assert.equal(null, largestNumber([]))
    })

})