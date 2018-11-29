/*

A pangram is a sentence that contains every single letter of the 
alphabet at least once. For example, the sentence "The quick brown 
fox jumps over the lazy dog" is a pangram, because it uses the 
letters A-Z at least once.

Given a string, detect whether or not it is a pangram. 
Return True if it is, False if not.

If the given string has any uppercase or numbers, it should return false

*/

function isPangram(string){
    //Your code here
}

const assert = require('assert');

describe('Pangram Challenge', function() {
    it('The phrase "the quick brown fox jumps over the lazy dog" should return true', function() {
        assert.equal(isPangram('the quick brown fox jumps over the lazy dog'), true)
    })
    it('The phrase "the five boxing kanye west wizards jump quickly" should return true', function() {
        assert.equal(isPangram('the five boxing kanye west wizards jump quickly'), true)
    })
    it('The phrase "take the dog for a walk" should return false', function() {
        assert.equal(isPangram('take the dog for a walk'), false)
    })
    it('The phrase "alright alright alright" should return false', function() {
        assert.equal(isPangram('alright alright alright'), false)
    })
    it('Should return false if numbers are included', function () {
        assert.equal(isPangram('abcdefghijk1mn0pqrstuvwxyz'), false)
    })
    it('Should return false if only numbers are included', function() {
        assert.equal(isPangram(1,2,3,4), false)
    })
    it('Should return false if any letters are uppercase', function() {
        assert.equal(isPangram('ABCDEFGHIJKLMNOPQRSTUVWXYZ'), false)
    })
})