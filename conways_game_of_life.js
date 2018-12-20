// Good morning ladies and gents, do we have a treat for you today.
// For our bonus round morning challenge, I present to you, Conway's Game of Life!
// The rules are simple. You are presented with 2d array, containing 1's and 0's.
// 1's represent live cells, 0's represent dead cells.
// Your task is to find what the next generation of the 2d array looks like based on the following rules:
//     If a living cell has fewer than 2 neighbours, it dies.
//     If a living cell has 2 or 3 neighbours, it continues to live.
//     If a living cell has greater than 3 neighbours, it dies.
//     If a dead cell has exactly 3 neighbours, it comes to life.
// Good luck and have fun!

function checkNeighbours(game, row, column) {
    let a = 0,
        b = 0,
        c = 0,
        d = 0,
        e = 0,
        f = 0,
        g = 0,
        h = 0
    if (game[row - 1] != undefined) {
        if (game[row - 1][column - 1] != undefined) {
            a = game[row - 1][column - 1]
        }
        if (game[row - 1][column + 1] != undefined) {
            c = game[row - 1][column + 1]
        }
        b = game[row - 1][column]
    }
    if (game[row + 1] != undefined) {
        if (game[row + 1][column - 1] != undefined) {
            d = game[row + 1][column - 1]
        }
        if (game[row + 1][column + 1] != undefined) {
            f = game[row + 1][column + 1]
        }
        e = game[row + 1][column]
    }
    if (game[row][column + 1] != undefined) {
        g = game[row][column + 1]
    }
    if (game[row][column - 1] != undefined) {
        h = game[row][column - 1]
    }
    return a + b + c + d + e + f + g + h
}

function conwaysGameOfLife(game) {
    let nextGen = []
    for (let row = 0; row < game.length; row++) {
        let nextRow = []
        for (let column = 0; column < game[row].length; column++) {
            let neighbours = checkNeighbours(game, row, column)
            if (game[row][column] === 0) {
                if (neighbours === 3) {
                    nextRow.push(1)
                } else {
                    nextRow.push(0)
                }
            } else {
                if (neighbours < 2 || neighbours > 3) {
                    nextRow.push(0)
                } else {
                    nextRow.push(1)
                }
            }
        }
        nextGen.push(nextRow)
    }
    return nextGen
}

function* nthGen(game) {
    let nextGen = game
    let currentGen
    while (true) {
        currentGen = nextGen
        nextGen = conwaysGameOfLife(currentGen)
        yield nextGen
    }
}

let assert = require('assert')

describe("Conway's Game Of Life", function () {
    context("Testing One Generation", function () {
        it("Should correctly return the next generation of the game", function () {
            let game = [
                [0, 0, 0, 0, 0],
                [0, 0, 1, 1, 0],
                [0, 1, 1, 0, 0],
                [0, 0, 1, 0, 1],
                [0, 0, 1, 0, 0]
            ]
            assert.deepEqual(conwaysGameOfLife(game), [
                [0, 0, 0, 0, 0],
                [0, 1, 1, 1, 0],
                [0, 1, 0, 0, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 1, 0]
            ])
        })
    })
    context("BEAST MODE!!!! Testing n generations", function () {
        let game = [
            [0, 0, 0, 0, 0],
            [0, 0, 1, 1, 0],
            [0, 1, 1, 0, 0],
            [0, 0, 1, 0, 1],
            [0, 0, 1, 0, 0]
        ]
        let answers = [
            [
                [0, 0, 0, 0, 0],
                [0, 1, 1, 1, 0],
                [0, 1, 0, 0, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 1, 0]
            ],
            [
                [0, 0, 1, 0, 0],
                [0, 1, 1, 0, 0],
                [0, 1, 0, 1, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 0, 0]
            ],
            [
                [0, 1, 1, 0, 0],
                [0, 1, 0, 1, 0],
                [0, 1, 0, 1, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 0, 0]
            ],
            [
                [0, 1, 1, 0, 0],
                [1, 1, 0, 1, 0],
                [0, 1, 0, 1, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 0, 0]
            ],
            [
                [1, 1, 1, 0, 0],
                [1, 0, 0, 1, 0],
                [1, 1, 0, 1, 0],
                [0, 0, 1, 0, 0],
                [0, 0, 0, 0, 0]
            ]

        ]
        let generatorObject = nthGen(game)
        for (let gen = 0; gen < 5; gen++) {
            it("Should correctly return the next generation of the game", function () {
                assert.deepEqual(generatorObject.next().value, answers[gen])
            })
        }
    })
})