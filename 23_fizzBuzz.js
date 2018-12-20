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
    let resultArr = []
    let resultItem
    for (let num of array) {
        resultItem = ''
        if (num % 3 === 0) resultItem += 'Fizz'
        if (num % 5 === 0) resultItem += 'Buzz'
        resultItem === '' ? resultArr.push(num) : resultArr.push(resultItem)
        resultItem === '' ? console.log(num) : console.log(resultItem)
    }
    return resultArr
}

const assert = require('chai').assert;

describe('fizzBuzz', function () {
    it('Should return Fizz for numbers which are multiple of 3', function () {
        assert.includeOrderedMembers(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [1, 2, "Fizz", 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz'], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]), [1, 2, "Fizz", 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz'], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([11, 12, 13, 14, 15, 16, 17, 18, 19, 20]), [11, "Fizz", 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz'], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([22, 87, 71, 38]), [22, "Fizz", 71, 38], 'include ordered members')
    })
    it('Should return Buzz for numbers which are multiple of 5', function () {
        assert.includeOrderedMembers(fizzBuzz([18, 19, 20, 21, 22]), ['Fizz', 19, 'Buzz', 'Fizz', 22], 'include ordered members')
        assert.deepEqual(fizzBuzz([43, 56, 22, 40, 28]), [43, 56, 22, "Buzz", 28], 'include ordered members')
    })
    it('Should return FizzBuzz for numbers which are multiples of 3 and 5', function () {
        assert.includeOrderedMembers(fizzBuzz([45, 94, 1]), ['FizzBuzz', 94, 1], 'include ordered members')
        assert.includeOrderedMembers(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]), [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz', 'Fizz', 22, 23, 'Fizz', 'Buzz', 26, 'Fizz', 28, 29, 'FizzBuzz', 31, 32, 'Fizz', 34, 'Buzz', 'Fizz', 37, 38, 'Fizz', 'Buzz', 41, 'Fizz', 43, 44, 'FizzBuzz', 46, 47, 'Fizz', 49, 'Buzz', 'Fizz', 52, 53, 'Fizz', 'Buzz', 56, 'Fizz', 58, 59, 'FizzBuzz', 61, 62, 'Fizz', 64, 'Buzz', 'Fizz', 67, 68, 'Fizz', 'Buzz', 71, 'Fizz', 73, 74, 'FizzBuzz', 76, 77, 'Fizz', 79, 'Buzz', 'Fizz', 82, 83, 'Fizz', 'Buzz', 86, 'Fizz', 88, 89, 'FizzBuzz', 91, 92, 'Fizz', 94, 'Buzz', 'Fizz', 97, 98, 'Fizz', 'Buzz'], 'include ordered members')
    })
})