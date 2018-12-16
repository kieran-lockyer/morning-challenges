/*

A pangram is a sentence that contains every single letter of the 
alphabet at least once. For example, the sentence "The quick brown 
fox jumps over the lazy dog" is a pangram, because it uses the 
letters A-Z at least once.

Given a string, detect whether or not it is a pangram. 
Return True if it is, False if not.

If the given string has any uppercase or numbers, it should return false

*/

function isPangram(string) {
    // return string.match(/([a-z].?){26,}/i) ? true : false
    // for (let letter of 'abcdefghijklmnopqrstuvwxyz') {
    //     if (!string.toLowerCase().includes(letter)) return false 
    // }
    // return true
    // string = string.replace(/[^a-z]/gi, '')
    // string = [...new Set(string)]
    // return string.length === 26 ? true : false
    return [...new Set(string.replace(/[^a-z]/gi, ''))].length === 26
}

const assert = require('assert');

describe('Pangram Challenge', function () {
    it('The phrase "the quick brown fox jumps over the lazy dog" should return true', function () {
        assert.equal(isPangram('the quick brown fox jumps over the lazy dog'), true)
    })
    it('The phrase "the five boxing kanye west wizards jump quickly" should return true', function () {
        assert.equal(isPangram('the five boxing kanye west wizards jump quickly'), true)
    })
    it('The phrase "take the dog for a walk" should return false', function () {
        assert.equal(isPangram('take the dog for a walk'), false)
    })
    it('The phrase "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" should return false', function () {
        assert.equal(isPangram('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'), false)
    })
    it('The phrase "a0b1c2d3e4f5g6h7i8j9klmnopqrstuvwxyz" should return true', function () {
        assert.equal(isPangram('a0b1c2d3e4f5g6h7i8j9klmnopqrstuvwxyz'), true)
    })
    it('The phrase "alright alright alright" should return false', function () {
        assert.equal(isPangram('alright alright alright'), false)
    })
    it('Should return false if numbers are included in place of letters', function () {
        assert.equal(isPangram('abcdefghijk1mn0pqrstuvwxyz'), false)
    })
    it('Should return false if only numbers are included', function () {
        assert.equal(isPangram('1,2,3,4'), false)
    })
    it('Should return true for uppercase', function () {
        assert.equal(isPangram('ABCDEFGHIJKLMNOPQRSTUVWXYZ'), true)
    })
})