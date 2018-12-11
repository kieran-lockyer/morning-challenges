/*

Working individually or in pairs write out differnt tests which will
count the number of even numbers in an array. 

Try to have at least three different tests which test differnt values
put into your method, such as an empty array.

Once you have done done this, write out the method and check if it passes. 

Example: countEvens = ([1,2,3,4]) => 2

Hint:
If your having trouble writing tests, look up some of the previous challenges or try
Google - mocha tests to get an idea.

*/

const countEvens = (arr) => {
    return arr.length > 0 ? arr.filter(a =>
        a % 2 === 0 && ![NaN, null].includes(a)
    ).length : null
}

// Your tests here
let assert = require('assert')

describe('countEvens', function () {
    context('Should return the right number of even numbers.', function () {
        it('Should return 5 when there are 5 even numbers', function () {
            assert.equal(countEvens([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), 5)
        })
        it('Should return 2 when there are 2 even numbers', function () {
            assert.equal(countEvens([1, 2, 3, 4]), 2)
        })
        it('Should return 10 when there are 10 even numbers', function () {
            assert.equal(countEvens([2, 4, 6, 8, 10, 12, 14, 16, 18, 20]), 10)
        })
    })
    context('Should return the correct number of even numbers with other datatypes', function () {
        it('Should return 2 when there are 2 even numbers and strings', function () {
            assert.equal(countEvens([1, 2, 'three', 4, 5]), 2)
        })
        it('Should return 3 when there are 3 even numbers and null', function () {
            assert.equal(countEvens([1, 2, null, 4, 5, 6]), 3)
        })
        it('Should return 4 when there are 4 even numbers and undefined', function () {
            assert.equal(countEvens([0, 1, 2, undefined, 4, 5, 6]), 4)
        })
    })
    context('Should return the right number of even numbers.', function () {
        it('Should return 0 when there are no even numbers', function () {
            assert.equal(countEvens([1, 3, 5, 7, 9]), 0)
        })
        it('Should return null when there are arr is empty', function () {
            assert.equal(countEvens([]), null)
        })
    })
})