let assert = require('assert');
let {isPalindrome, isAnagram} = require('./coolstrings')

describe("Palindrome: no punctuation or capitalization", () => {
  it("Should return true for palindrome with no punctuation", () => {
    assert.equal(isPalindrome("never odd or even"), true);
  });
});

describe("Palindrome: with capitalization", () => {
  it("Should return true for palindrome with some capitalization", () => {
    assert.equal(isPalindrome("Never odd or even"), true);
  });
});

describe("Palindrome: empty string", () => {
  it("Should return true for empty string", () => {
    assert.equal(isPalindrome(""), true);
  });
});

describe("Palindrome: with punctuation", () => {
  it("Should return true for palindrome with punctuation", () => {
    assert.equal(isPalindrome("Never odd or even."), true);
  });
});

describe("Palindrome: not a palindrome", () => {
  it("Should return false if not a palindrome", () => {
    assert.equal(isPalindrome("not a palindrome"), false);
  });
});

describe("Anagram: no punctuation or capitalization", () => {
  it("Should return true for anagrams with no punctuation", () => {
    assert.equal(isAnagram("restful", "fluster"), true);
  });
});

describe("Anagram: with capitalization", () => {
  it("Should return true for anagrams with no punctuation", () => {
    assert.equal(isAnagram("Restful", "Fluster"), true);
  });
});

describe("Anagram: empty string", () => {
  it("Should return true for empty string", () => {
    assert.equal(isAnagram("", ""), true);
  });
});

describe("Anagram: with punctuation", () => {
  it("Should return true for anagram with punctuation", () => {
    assert.equal(isAnagram("Customers.", "store.scum"), true);
  });
});

describe("Anagram: not an anagram", () => {
  it("Should return false if not an anagram", () => {
    assert.equal(isAnagram("not an anagram", "clearly not an anagram"), false);
  });
});
