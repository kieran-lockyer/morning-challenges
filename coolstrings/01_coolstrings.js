// Create a new variable called coolstrings which cannot be reassigned
// and set its value to 'coolstrings'

// Create a second variable called numbers which can be reassigned
// and set its value to 7

// Instead of using:
  // def()
  // 
  // end
// What is the main way to write methods in JavaScript?

// Instead of puts, what does JavaScript use instead?





function setNumbers(num) {
  numbers = num;  
}
var assert = require('assert');
  
describe('coolstrings', () => {
    it('checks that coolstrings cannot be changed', function() {
      try {
        coolstrings = 'abc';
      } catch (err) {
        //do nothing
      }
      assert.equal(coolstrings,"coolstrings");
    });
});

describe('numbers function', () => {
  it('checks that numbers can be changed', function() {
    setNumbers(9);
    assert.equal(numbers, 9);
  });
});