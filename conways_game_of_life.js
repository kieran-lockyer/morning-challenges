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

function conwaysGameOfLife(twoDimensionalArray) {
    // Do something
}

function* nthGen(int, game) {
    // BEAST MODE
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
        let n = 0
        for (let gen of nthGen(5, game)) {
            it("Should correctly return the next generation of the game", function () {
                assert.deepEqual(gen, answers[n])
                n += 1
            })
        }
    })
})
