/*
validEmail takes one argument 'email'. Return true if
the email is a valid email otherwise, return false.

Email validation can get really messy but this challenge
will follow the following rules:
    - The string must contain an "@" character.
    - The string must contain a "." character.
    - The "@" character must have a minimum of one character in front of it.
    - The " . " and the "@" ust be in the appropiate places.
        (john.doe@com is invalid, john@doe.com is valid)
    
Examples:
    validEmail('@gmail.com') ➞ false
    validEmail('hello.gmail@com') ➞ false
    validEmail('gmail') ➞ false
    validEmail('hello@gmail') ➞ false
    validEmail('hello@edabit.com') ➞ true
    validEmail('') ➞ false

Use mocha 34_validEmail.js to check your solution

Try adding your tests after finding a solution.
*/

const validEmail = (email) => {
    // Your code here
}


let assert = require('assert')

describe("Valid Email", () => {
    it("Should identify emails without an @ symbol as invalid", () => {
        assert.equal(validEmail('gmail'), false)
    })
    it("Should identify emails without a user as invalid", () => {
        assert.equal(validEmail('@gmail.com'), false)
    })
    it("Should identify emails without a .tld as invalid", () => {
        assert.equal(validEmail('hello@gmail'), false)
    })
    it("Should identify emails with a . but without a .tld as invalid", () => {
        assert.equal(validEmail('hello.gmail@com'), false)
    })
    it("Should identify black emails as invalid", () => {
        assert.equal(validEmail(''), false)
    })
    it("Should identify valid emails", () => {
        assert.equal(validEmail('steve@gmail.com'), true)
    })
})