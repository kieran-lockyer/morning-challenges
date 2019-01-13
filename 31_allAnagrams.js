/*
An anagram is a word or a phrase made by rearranging the letters of
another word or phrase; for example, "act" is an anagram of "cat".

allAnagrams takes a word (a) and an array of potential anagrams (b).

Return an array of actual anagrams.

Examples:
AllAnagrams("cat", ["act","dog","god","tac"]) should return: ["act", "tac"]

Test your solution with mocha 31_allAnagrams.js
*/

const allAnagrams = (word, list) => {
    return list.filter(item => item.length === word.length && item.map(char => ))
    result = []
    for (let item of list) {
        if (word.length === item.length) {
            let match = true
            for (let char of item) {
                if (!word.match(new RegExp(char, 'g')).length === item.match(new RegExp(char, 'g')).length) {
                    match = false
                }
            }
            if (match) result.push(item)
        }
    }
    return result
}




let assert = require('assert')

describe("All Anagrams", () => {
    it("Should return an array of annagrams for cat", () => {
        assert.deepEqual(allAnagrams("cat", ["act", "dog", "god", "tac"]), ["act", "tac"])
    })
    it("Should return an array of annagrams for dog", () => {
        assert.deepEqual(allAnagrams("dog", ["act", "cat", "god", "tac"]), ["god"])
    })
    it("Should return an array of annagrams including repeats", () => {
        assert.deepEqual(allAnagrams("act", ["cat", "dog", "tac", "cat"]), ["cat", "tac", "cat"])
    })
    it("Should return an empty array when there are no annagrams", () => {
        assert.deepEqual(allAnagrams("bird", ["dog", "cat", "fish"]), [])
    })
    it(`Should return an array of empty strings if the annagram is ""`, () => {
        assert.deepEqual(allAnagrams("", ["dog", "cat", "", ""]), ["", ""])
    })
})