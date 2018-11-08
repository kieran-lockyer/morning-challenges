/*
Open Door
Return true if name is Simon and hasCoffee is true.
Otherwise return false.
Test your solution:
mocha 03_open_door.js
*/

function openDoor (name, hasCoffee) {
// Your code here
// Google JS syntax ;)
}

var assert = require('assert');

describe('openDoor', function() {
    it('should return true if "Simon" and hasCoffee', function() {
        assert.equal(true, openDoor("Simon",true));
    });
    it('should return false if !"Simon" and hasCoffee', function() {
        assert.equal(false, openDoor("Scott",true));
    });
    it('should return false if "Simon" and !hasCoffee', function() {
        assert.equal(false, openDoor("Simon",false));
    });
});