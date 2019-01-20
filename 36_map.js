/*
Map

Produce a new array of values by mapping each value in a list
throught a transformation function (iteratee). The iteratee is
passed three arguments:
    - The value
    - The index (or key) of the iteration
    - A reference to the entire list

Hint: You're pretty much building JS's .map helper. Execpt your
version will work with arrays AND objects. A good first step
would be checking if the firstargument is an object or an array.

Example:
1. map([1,2,3], (num) => { return num * 3}) ➞ [3,6,9]
2. map({one: 1, two: 2, three: 3}, (num) => { return num * 3 }) ➞ [3,6,9]
Check you solutions using mocha 36_map.js.
*/


// Your code here

const map = (arg, action) => {
    result = []
    if (Array.isArray(arg)) {
        for (let i = 0; i < arg.length; i++) {
            result.push(action(arg[i]))
        }
    } else {
        for (let key of Object.keys(arg)) {
            result.push(action(arg[key]))
        }
    }
    return result
}


let assert = require('assert')

describe('Map', () => {
    it('can map arrays', () => {
        const result = map([1, 2, 3, 4], (num) => { return num * 3 })
        assert.deepEqual(result, [3, 6, 9, 12])
    })
    it('can map objects', () => {
        const result = map({ one: 1, two: 2, three: 3 }, (num) => { return num * 3 })
        assert.deepEqual(result, [3, 6, 9])
    })
})