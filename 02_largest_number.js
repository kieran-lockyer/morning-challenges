/*
Largest Number
Write a method that will take an array of numbers
and return whichever is the largest.

Test your solution:
mocha 02_largest_number.js
(You'll need mocha installed first: `npm install mocha -g`)
*/

function largestNumber(arr) {
    let largest
    for (let num in arr) {
        if (largest) {
            if (arr[num] != NaN && arr[num] > largest) {
                largest = arr[num]
            }
        } else {
            if (arr[num] != NaN) {
                largest = arr[num]
            }
        }
    }
    if (largest) {
        return largest
    } else {
        return null
    }
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