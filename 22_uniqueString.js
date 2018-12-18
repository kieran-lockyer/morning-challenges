/*
Find the unique string in an array, which should all contain letters.

Example:
uniqueString(["alright", "isod", "Alright", "ALRIGHT"]) => "isod"

Test your solution:
mocha 22_uniqueString.js
*/

function uniqueString(array) {
    // Original Solution
    // result = {}
    // for (let item of array) {
    //     contents = [...new Set(item.toLowerCase().split('').sort())].join('')
    //     if (result[contents]) {
    //         result[contents].count += 1
    //     } else {
    //         result[contents] = {
    //             count: 1,
    //             item: item
    //         }
    //     }
    // }
    // for (let contents of Object.keys(result)) {
    //     if (result[contents].count === 1) {
    //         return result[contents].item
    //     }
    // }

    // Newer solution, more readabale and better bigO
    // let standard
    // for (let i = 0; i < array.length; i++) {
    //     if (standard) {
    //         if ([...new Set(array[i].toLowerCase())].join('') !== standard) {
    //             return array[i]
    //         }
    //     } else {

    // Refactored solution down as much as possible.
    if (new Set(array[0].toLowerCase()).size == new Set(array[1].toLowerCase()).size && new Set()) {
        return array.filter(item => [...new Set(item.toLowerCase())].sort().join('') != [...new Set(array[0])].sort().join(''))[0]
    } else if ([...new Set(array[1].toLowerCase())].sort().join('') === [...new Set(array[2].toLowerCase())].sort().join('')) {
        return array[0]
    } else {
        return array[1]
    }
}

const assert = require('assert')

describe('Unique string challenge', function () {
    it('Should return the unique string', function () {
        assert.deepEqual(uniqueString(['aa', 'AaA', 'aaaa', 'bBbB', 'aAaA', 'a']), 'bBbB')
        assert.deepEqual(uniqueString(['kios', 'foo', 'ikos', 'ikso', 'kois', 'kiso']), 'foo')
        assert.deepEqual(uniqueString(['abc', ' ', '  ']), 'abc')
        assert.deepEqual(uniqueString(['xylophone', 'xylophoen', 'yxlphoone', 'ambigraminus']), 'ambigraminus')
    })
})