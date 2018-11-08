/*
Largest Number
Write a method that will take two numbers,
and return whichever is the largest.

Test your solution:
mocha 02_largest_number.js
(You'll need mocha installed first: `npm install mocha -g`)
*/

function largestNumber (a, b) {
    // Your code here
    // Google JS syntax ;)
}

var assert = require('assert');
  
describe('largestNumber', function() {
    it('should return the largest number', function() {
      assert.equal(10, largestNumber(1,10));
      assert.equal(10, largestNumber(10,2));
      assert.equal(3, largestNumber(3,2));
    });
});