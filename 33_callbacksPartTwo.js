/*
Remind yourself how .filter works. Build it yourself 
using only .forEach. We've started you off.

More info about filter:
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter

*/

const filter = (items, callback) => {
  const results = []
  items.forEach(item => callback(item) && results.push(item))
  return results
}

// I'm using your Filter method to return even numbers.
// If your filter method is correct, this code should return: [2, 4]

filter([1, 2, 3, 4], (item) => {
  return item % 2 === 0
})