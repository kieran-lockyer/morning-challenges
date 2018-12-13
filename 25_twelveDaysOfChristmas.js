/*
When the function twelveDaysOfChristmas is called, it should 
print out all of the words to the song - which as you know 
repeats phrases
*/

const days = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
    "tenth",
    "eleventh",
    "twelfth"
];

const gifts = [
    "And a partridge in a pear tree.\n",
    "Two turtle doves",
    "Three French hens",
    "Four calling birds",
    "Five golden rings", 
    "Six geese a-laying",
    "Seven swans a-swimming",
    "Eight maids a-milking",
    "Nine ladies dancing",
    "Ten lords a-leaping",
    "Eleven pipers piping",
    "Twelve drummers drumming"    
];

function twelveDaysOfChristmas() {
// Your code here
}

twelveDaysOfChristmas()


const assert = require('chai').assert;

describe('Twelve days of Christmas challenge', function() {

    it('If the fifth day is called, should return the five gifts in the array', function() {
        assert.include(twelveDaysOfChristmas(), "fifth", "Should include fifth")
        assert.include(twelveDaysOfChristmas(), "Four calling birds", "Should include four calling birds")
        assert.include(twelveDaysOfChristmas(), "Two turtle doves", "Should include two turtle doves")
        assert.include(twelveDaysOfChristmas(), "Five golden rings", "Should include five golden rings")
        assert.include(twelveDaysOfChristmas(), "Three French hens", "Should include three french hens")
        assert.include(twelveDaysOfChristmas(), "And a partridge in a pear tree.\n", "Should include a partridge in a pear tree")
    })
    it('If the nineth day is called, should return the nine gifts in the array', function() {
        assert.include(twelveDaysOfChristmas(), "nineth", "Should include ninth")
        assert.include(twelveDaysOfChristmas(), "Six geese a-laying", "Should include six geese a-laying")
        assert.include(twelveDaysOfChristmas(), "Nine ladies dancing", "Should include nine ladies dancing")
    })
    it('If the twelfth day is called, should return the twelve gifts in the array', function() {
        assert.include(twelveDaysOfChristmas(), "twelfth", "Should include twelfth")
        assert.include(twelveDaysOfChristmas(), "Eleven pipers piping", "Should include elven pipers piping")
        assert.include(twelveDaysOfChristmas(), "Twelve drummers drumming", "Should include twelve drummers drumming")
    })
})