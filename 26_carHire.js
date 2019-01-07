/*
  After a hard quarter in the office you decide to get some rest on
  a vacation.

  You will need a rental car in order for you to get around.
  The manager of the car rental company makes you some good offers.

  Every day that you rent the car costs $40.
  If you rent the car for 7 or more days, you get $50 off your total.
  Alternatively, if you rent the car for 3 or more days, you get $20 
  off your total.

  Write a function that returns the total cost for (d) days.

  Examples:
  rentalCarCost(1) -> 40
  rentalCarCost(2) -> 80
  rentalCarCost(3) -> 100

  Check your solution:
  mocha 26_carHire.js
*/

const rentalCarCost = (d) => {
    // Your code here!
}



const assert = require('assert')

describe("Regular Tests:", () => {
    it("Should work for under 3 days:", () => {
        assert.equal(rentalCarCost(1), 40)
        assert.equal(rentalCarCost(2), 80)
    })
    it("Should work for under 7 days:", () => {
        assert.equal(rentalCarCost(3), 100)
        assert.equal(rentalCarCost(4), 140)
        assert.equal(rentalCarCost(5), 180)
        assert.equal(rentalCarCost(6), 220)
    })
    it("Should work for 7 or more days", () => {
        assert.equal(rentalCarCost(7), 230)
        assert.equal(rentalCarCost(8), 270)
        assert.equal(rentalCarCost(9), 310)
        assert.equal(rentalCarCost(10), 350)
    })
})