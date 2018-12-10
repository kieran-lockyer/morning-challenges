/*
There is a queue for the self-checkout tills at the supermarket. 
Your task is write a function to calculate the total time required for 
all the customers to check out!

The function has two input variables:
    customers: an array of positive integers 
            representing the queue. Each integer represents a customer, 
            and its value is the amount of time they require to check out.
    n: a positive integer, the number of checkout tills.

The function should consider each person in order, and add them to the 
'smallest' line at that time (the line with the least total time).

The function should return an integer, the time it takes for all lines to empty.

For example, if the input queue is [1,2,3,4,5,6] and there are 2 tills,
the queue would be separated as follows:
till1       till2
1           2
3           4
5           6
---         ---
9           12

So this would take 12 total time, since all customers will be served when
the last customer at till2 is served.

Check your solutions with mocha 16_supermarket.js
*/

// function queueTime(customers, n) {
//     let store = Array(n).fill(0)
//     for (let customer of customers) {
//         store[store.indexOf(store.reduce((a, b) => a < b ? a : b))] += customer
//     }
//     return store.reduce((a, b) => a > b ? a : b)
// }

function queueTime(customers, n) {
    let store = Array(n).fill(0)
    for (let customer of customers) {
        store.sort((a, b) => a - b)[0] += customer
    }
    return store.sort((a, b) => b - a)[0]
}

const assert = require('assert');

describe('queueTime', function () {
    context('Should return the correct queue time', function () {
        it('Should return 10 with [1,2,3,4] and 1 till', function () {
            assert.equal(queueTime([1, 2, 3, 4], 1), 10)
        })
        it('Should return 9 with [2,2,3,3,4,4] and 2 tills', function () {
            assert.equal(queueTime([2, 2, 3, 3, 4, 4], 2), 9)
        })
        it('Should return 12 with [1,2,3,4,5,6] and 2 tills', function () {
            assert.equal(queueTime([1, 2, 3, 4, 5, 6], 2), 12)
        })
        it('Should return 5 with [2,1,4,2,3,1] and 3 tills', function () {
            assert.equal(queueTime([2, 1, 4, 2, 3, 1], 3), 5)
        })

    })
    context('Should return 0 if there are no customers', function () {
        it('Should return 0 if there are no customers and 1 till', function () {
            assert.equal(queueTime([], 1), 0)
        })
        it('Should return 0 if there are no customers and 5 tills', function () {
            assert.equal(queueTime([], 5), 0)
        })

    })
    context('Should return the correct queue time if tills is greater than customers', function () {
        it('Should return the largest value - 5 - with [1,2,3,4,5] and 100 tills', function () {
            assert.equal(queueTime([1, 2, 3, 4, 5], 100), 5)
        })
        it('Should return the largest value - 5 - with [1,2,3,4,5] and 6 tills', function () {
            assert.equal(queueTime([1, 2, 3, 4, 5], 6), 5)
        })

    })
})