/*
Find Last Index
Iterate through an array in reverse, returning the index closest
to the end where the predicate truth test passes.
Example:
const users = [{'id': 1, 'name': 'Bob', 'last': 'Brown'},
             {'id': 2, 'name': 'Ted', 'last': 'White'},
             {'id': 3, 'name': 'Matthew', 'last': 'McConaughey'},
             {'id': 4, 'name': 'Kanye', 'last': 'West'}];
_.findLastIndex(users, {
  name: 'Kanye'
});
=> 3
*/

const findLastIndex = (array, needle) => {
// Your code here!
}
  
  
// Check your solution by running these tests: mocha last_index.js
const assert = require('assert');

describe('Find Last Index', () => {
  it('finds the last index', () => {
    const objects = [
      {a: 0, b: 0},
      {a: 1, b: 1},
      {a: 2, b: 2},
      {a: 0, b: 0}
    ];
    const result = findLastIndex(objects, {a: 0});
    assert.equal(result, 3);
  })
});
  