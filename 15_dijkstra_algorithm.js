/*
Strongly recommend to attempt this in pairs or groups.

Consider the graph stored as 'problem'. Write a method (and helper
methods) that will show the distance and shortest path between
two nodes in the graph.

If there is no path, the distance returned should be Infinity, 
and the path should be an empty array.

If the start and end node are the same, the distance should be 0 and
the path should only contain the start/end node. 

Dijkstra’s algorithm:
Note the initial cost to get to all nodes from the start node as
Infinity, except for the start node itself, for which the cost is 0.

In each round:
A. Pick the unvisited node with the smallest current cost noted
B. From that node, update the cost to every child node of that node, 
   indicating the parent node for the cost.
C. Mark that node as done

You are done when all nodes have been visited. The cost is the
final one noted on the finish node, and the path can be taken
from the parents recorded.

Test your solution: mocha 15_dijkstra_algorithm.js

Hints:
If you are having trouble making a start try drawing
a layout of the diagram and thinking about how you could move around
the object.

Using Google will also help a lot for coming up with ideas.
*/

const problem = {
  A: {B: 2, C: 7},
  B: {D: 1, E: 8},
  C: {B: 3, E: 12},
  D: {E: 4, F: 9},
  E: {F: 4},
  F: {}
};

const dijkstra = (graph, start, end) => {
  // Your code here
};


var assert = require('assert');

describe('Find shortest path', () => {
  it('Should return the total length of the shortest distance', () => {
    assert.deepEqual({ distance: 11, path: [ 'A', 'B', 'D', 'E', 'F' ] }, dijkstra(problem, 'A', 'F'));
    assert.deepEqual({ distance: 9, path: [ 'B', 'D', 'E', 'F' ] }, dijkstra(problem, 'B', 'F'));
  });
  it('Should return infinity if the distance cannot be completed', () => {
    assert.deepEqual({ distance: Infinity, path: [] }, dijkstra(problem, 'B', 'A'));
  });
  it('Should return the letter in the path if it stays at the same letter', () => {
    assert.deepEqual({ distance: 0, path: ['B'] }, dijkstra(problem, 'B', 'B'));
  });
});
