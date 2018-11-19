/*
Write a method to convert a binary number to a decimal.

Examples:
    binaryToDecimal(1000) => 8
    binaryToDecimal(1011) => 11
    binaryToDecimal(1100) => 12
*/

function binaryToDecimal(binaryNumber) {
    // Your code here
}

let assert = require('assert')

describe('Binary to decimal', function () {
    it('Should convert a binary to its decimal value', function () {
        assert.equal((9),binaryToDecimal(1001))
        assert.equal((15),binaryToDecimal(1111))
        assert.equal((31),binaryToDecimal(11111))
    })
    it('Should return a null if the binary has a number other than 0 or 1', function () {
        assert.equal((null),binaryToDecimal(1002))
        assert.equal((null),binaryToDecimal(1220))
    })
})