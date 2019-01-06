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
]

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
]

function twelveDaysOfChristmas(day) {
    return [days[day - 1], ...gifts.slice(0, day)]
}

// function* twelveDaysOfChristmas(day) {
//     for (let d = day - 1; d <= 0; d--) {
//         yield [days[d], gifts[d]]
//     }
// }

const assert = require('chai').assert

describe('Twelve days of Christmas challenge', function () {

    it('If the fifth day is called, should return the five gifts in the array', function () {
        assert.include(twelveDaysOfChristmas(5), "fifth", "Should include fifth")
        assert.include(twelveDaysOfChristmas(5), "Four calling birds", "Should include four calling birds")
        assert.include(twelveDaysOfChristmas(5), "Two turtle doves", "Should include two turtle doves")
        assert.include(twelveDaysOfChristmas(5), "Five golden rings", "Should include five golden rings")
        assert.include(twelveDaysOfChristmas(5), "Three French hens", "Should include three french hens")
        assert.include(twelveDaysOfChristmas(5), "And a partridge in a pear tree.\n", "Should include a partridge in a pear tree")
    })
    it('If the nineth day is called, should return the nine gifts in the array', function () {
        assert.include(twelveDaysOfChristmas(9), "ninth", "Should include ninth")
        assert.include(twelveDaysOfChristmas(9), "Six geese a-laying", "Should include six geese a-laying")
        assert.include(twelveDaysOfChristmas(9), "Nine ladies dancing", "Should include nine ladies dancing")
    })
    it('If the twelfth day is called, should return the twelve gifts in the array', function () {
        assert.include(twelveDaysOfChristmas(12), "twelfth", "Should include twelfth")
        assert.include(twelveDaysOfChristmas(12), "Eleven pipers piping", "Should include elven pipers piping")
        assert.include(twelveDaysOfChristmas(12), "Twelve drummers drumming", "Should include twelve drummers drumming")
    })
})