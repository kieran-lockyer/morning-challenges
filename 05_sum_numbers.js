// Write a method that will take an array player scores for a series of games
// and return the name of the player with the highest total score.
// Test your solution:
// mocha 05_sum_numbers.js
function highest(person1, person2) {
    return person1.scores.reduce((a, b) => a + b) >= person2.scores.reduce((a, b) => a + b) ? person1 : person2
}

function findWinner(players) {
    return players.reduce(highest).name
}

var assert = require('assert');

class Player {
    constructor(name, scores) {
        this.name = name
        this.scores = scores
    }
}

let players = []
describe('findWinner', function () {
    it('Should return the winner when winner is first in array', function () {
        players = [new Player('James', [50, 100, 85]), new Player('Nathan', [55, 90, 86])]
        assert.equal('James', findWinner(players))
    })
    it('Should return the winner when winner is second in array', function () {
        players = [new Player('Nathan', [50, 100, 85]), new Player('James', [55, 90, 86])]
        assert.equal('Nathan', findWinner(players))
    })
    it('Should return the first player when both players are tied', function () {
        players = [new Player('Nathan', [50, 100, 85]), new Player('James', [50, 100, 85])]
        assert.equal('Nathan', findWinner(players))
    })
    it('Should return the winner when winner is last in array', function () {
        players = [new Player('Nathan', [50, 100, 85]), new Player('James', [50, 100, 85]), new Player('Tom', [2000, 100, 85])]
        assert.equal('Tom', findWinner(players))
    })
})