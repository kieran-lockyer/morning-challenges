/*
Find Last Index
Iterate through an array in reverse, returning the index closest
to the end where the predicate truth test passes.

Try adding some tests.
One example could be what if the object is not found in the array
at all.

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
  array = array.reverse()
  for (let item of array) {
    for (let key of Object.keys(item)) {
      if (key === Object.keys(needle)[0]) {
        if (item[key] === needle[Object.keys(needle)[0]]) {
          return array.length - array.indexOf(item) - 1
        }
      }
    }
  }
  return null
}


// Check your solution by running these tests: mocha last_index.js
const assert = require('assert');

describe('Find Last Index', () => {
  it('finds the last index', () => {
    const objects = [{
        a: 0,
        b: 0
      },
      {
        a: 1,
        b: 1
      },
      {
        a: 2,
        b: 2
      },
      {
        a: 0,
        b: 0
      }
    ];
    const result = findLastIndex(objects, {
      a: 0
    });
    assert.equal(result, 3);
  })
  it('finds the last index', () => {
    const users = [{
        'id': 1,
        'name': 'Bob',
        'last': 'Brown'
      },
      {
        'id': 2,
        'name': 'Ted',
        'last': 'White'
      },
      {
        'id': 3,
        'name': 'Matthew',
        'last': 'McConaughey'
      },
      {
        'id': 4,
        'name': 'Kanye',
        'last': 'West'
      }
    ];
    const result = findLastIndex(users, {
      name: 'Kanye'
    });
    assert.equal(result, 3)
  })
  it('finds the 2nd last index', () => {
    const cars = [{
        'make': 'Ford',
        'model': 'GT40'
      },
      {
        'make': 'Holden',
        'model': 'Efijy'
      },
      {
        'make': 'Tesla',
        'model': 'Model 3'
      },
      {
        'make': 'Tesla',
        'model': 'Model x'
      },
      {
        'make': 'Holden',
        'model': 'Efijy'
      },
      {
        'make': 'Ford',
        'model': 'GT40'
      },
    ];
    const result = findLastIndex(cars, {
      model: 'Efijy'
    });
    assert.equal(result, 4)
  })
  it('finds the nothing', () => {
    const users = [{
        'id': 1,
        'name': 'Bob',
        'last': 'Brown'
      },
      {
        'id': 2,
        'name': 'Ted',
        'last': 'White'
      },
      {
        'id': 3,
        'name': 'Matthew',
        'last': 'McConaughey'
      },
      {
        'id': 4,
        'name': 'Kanye',
        'last': 'West'
      }
    ];
    const result = findLastIndex(users, {
      name: 'Michael'
    });
    assert.equal(result, null)
  })
});