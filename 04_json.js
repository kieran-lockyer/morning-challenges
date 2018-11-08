
personJson = '{"firstname":"kanye","lastname":"west", "occupation":"genius", "songs":[{"id": 1, "title": "Stronger", "year": 2007}, {"id": 2, "title": "Gold Digger", "year": 2005 }] }';

// Extract the JSON code and complete the different steps:
// 1) Return the firstname
// 2) Return the lastname in uppercase
// 3) Add a new song to the array, it should have an id of 3, title as Famous,
//    and the year as 2016
// Test your solution with mocha 04_json.js


const person = JSON.parse(personJson);


function firstName () {
  // Your code here
}

function upperCaseLastName () {
  // Your code here
}

function addSong () {
  // Your code here
}

let assert = require('assert');

describe("firstName", function() {
  it("Should show the firstname listed in personJson", function() {
    assert.equal(firstName(), "kanye");
  });
});

describe("upperCaseLastName", function() {
  it("Should return the upper case lastname", function() {
    assert.equal(upperCaseLastName(), "WEST");
  });
});

describe("addSong", function() {
  it("Should add the song Famous", function() {
    addSong(3, "Famous", 2016);
    let song = person["songs"][person["songs"].length-1]
    assert.equal(3, song.id)
    assert.equal("Famous", song.title)
    assert.equal(2016, song.year)
  });
});
