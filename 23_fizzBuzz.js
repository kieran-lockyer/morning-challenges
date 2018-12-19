/*

Write a function that prints and returns the elements of a number
array passed in as a parameter.

For multiples of three return “Fizz” instead of the number and
for the multiples of five return “Buzz”. For numbers which are
multiples of both three and five return “FizzBuzz”.

However first look over the tests, some are incorrect and others
are incomplete. Fix these before adding a solution and if your
feeling confident try add some other tests.

Test your solution:
mocha 23_fizzbuzz.js

Example:
1
2
Fizz
4
Buzz
...etc
14
FizzBuzz

*/


function fizzBuzz(array) {
    // Your code here!
}

const assert = require('chai').assert;

describe('fizzBuzz', function() {
    it('Should return Fizz for numbers which are multiple of 3', function() {
        assert.includeOrderedMembers(fizzBuzz([1,2,3,4,5,6,7,8,9,10]), [1,2,"Fizz",4], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([1,2,3,4,5,6,7,8,9,10]), [4,"Buzz","Fizz"], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([11,12,13,14,15,16,17,18,19,20]), [11, "Fizz"], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([22,87,71,38]), [22, "Fizz"], 'include ordered members')
    })
    it('Should return Buzz for numbers which are multiple of 5', function() {
        assert.includeOrderedMembers(fizzBuzz([18,19,20,21,22]), [19,20,21], 'include ordered members')
        assert.deepEqual(fizzBuzz([43,56,22,40,28]), [22,"Buzz",28], 'include ordered members')
    })
    it('Should return FizzBuzz for numbers which are multiples of 3 and 5', function () {
        assert.includeOrderedMembers(fizzBuzz([45,94,1]), [44,17,38], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz("I need code"))
    })
})