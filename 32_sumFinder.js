/*
Sum finder

This function takes two arguments:
numbers (an array of integers) and sum (an integer).

Return true if any two numbers in the array can be added
together to equal sum. Otherwise return false.

Examples:
sumFinder([1,1], 2) -> true (1 and 1 = 2)
sumFinder([1,3], 2) -> false (no two numbers sum to 2)
sumFinder([1,8,9,5], 6) -> true (5 and 1 = 6)

Test your solution with mocha sumFinder.js
*/

const sumFinder = (numbers, sum) => {
    return numbers.map(num => numbers.reduce((a, b) => a + b === sum && a !== b)).includes(true)
    // for (let x = 0; x < numbers.length; x++) {
    //     for (let n = x + 1; n < numbers.length; n++) {
    //         if (numbers[x] !== numbers[n] && numbers[x] + numbers[n] == sum) {
    //             return true
    //         }
    //     }
    // }
    // return false
}

let assert = require('assert')

describe("Sum Finder", () => {
    it("Should return true when two items add up to sum", () => {
        assert.equal(sumFinder([1, 2], 3), true)
        assert.equal(sumFinder([1, 8, 9, 5], 6), true)
    })
    it("Should return false if no tow numbers add up to sum", () => {
        assert.equal(sumFinder([1, 3], 5), false)
        assert.equal(sumFinder([4, 5], 10), false)
    })
    it("Shouldn't compare the same number to get the total", () => {
        assert.equal(sumFinder([5, 5], 10), false)
    })
    it("Shouldn't compare three or more numbers to get the total", () => {
        assert.equal(sumFinder([1, 2, 3], 6), false)
        assert.equal(sumFinder([5, 4, 2, 13], 11), false)
    })
})