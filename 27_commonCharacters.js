/*
Write code which will return the common characters found in
two different strings. You should only need to return the
characters once.

Examples:
commonCharacters("efg", "feg") => "efg"
commonCharacters("We are both dragon energy", "I am God's vessel") => "eaodg"
commonCharacters("Alright alright alright", "") => ""

*/

const commonCharacters = (...args) => {
    args = args.map(string => [...new Set(string)])
    return args[0].filter((char) => char != ' ' && args[1].includes(char)).join('')
}

// Your Code Should Pass:
const chai = require('chai');
const should = chai.should();

describe('Common Characters', () => {
    it('returns commons characters', () => {
        commonCharacters('abc', 'abc').should.equal('abc')
    })

    it('returns common characters', () => {
        commonCharacters("What is love?", "Baby don't hurt me").should.equal('hatoe')
    })

    it('returns common characters', () => {
        commonCharacters('Riding on a buffalo makes me more approachable', 'so what').should.equal('oash')
    })

    it('returns empty string', () => {
        commonCharacters('', 'No more').should.equal('')
    })

    it('returns empty string', () => {
        commonCharacters('No more', '').should.equal('')
    })

    it('returns empty string', () => {
        commonCharacters('', '').should.equal('')
    })
})