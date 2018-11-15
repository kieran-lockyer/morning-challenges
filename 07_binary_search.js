/*
Write a method which will act as a binary search which will find the 
position and the actual number of steps required to find the position. 
When the array has an even number of values the midpoint index will be rounded up.

Example:
    binaryArray = [1,5,8,12,20,21,35]
    searchValue = 3

    In this case the index returned would be 2 and it should take 3 steps. 
    In the first step, 3 is the midpoint index (value = 12). 
    In the second step 1 is the midpoint index (value = 5). 
    In the third and final step we are only left with 8 at index 2.

*/

function binarySearch(binaryArray, searchValue) {
    // Your code here
}


let assert = require('assert')

describe('Count loops', function() {
    it('Should count one step when search values is in the middle', function() {
        assert.equal([3,1],binarySearch([1,3,7,10,14,19,31],10))
        assert.equal([1,1],binarySearch([1,3,7],3))
        assert.equal([0,1],binarySearch([1]),1)
    });
    it('Should count length divided by two steps when value is on end', function() {
        assert.equal([0,4],binarySearch([1,3,7,10,14,19,31],1))
        assert.equal([6,3],binarySearch([1,3,7,10,14,19,31],31))
    });
})