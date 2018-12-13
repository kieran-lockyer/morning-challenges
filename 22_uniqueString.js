/*
Find the unique string in an array, which should all contain letters.

Example:
uniqueString(["alright", "isod", "Alright", "ALRIGHT"]) => "isod"

Test your solution:
mocha 22_uniqueString.js
*/

function uniqueString(array) {
    // Your code here
}

const assert = require('assert')

describe('Unique string challenge', function() {
    it('Should return the unique string', function() {
        assert.deepEqual(uniqueString(['aa', 'AaA', 'aaaa', 'bBbB', 'aAaA', 'a']), 'bBbB')
        assert.deepEqual(uniqueString(['kios', 'foo bar', 'ikos', 'ikso', 'kois', 'kiso']), 'foo bar')
    })
    it('Return "A number is not a string" if there are numbers present', function() {
        assert.deepEqual(uniqueString(['sss', 'sssss', 22, 'SSSS']), "A number is not a string")
        assert.deepEqual(uniqueString([2, 222, 'kkkkkk', 6.543]), "A number is not a string")
    })
})