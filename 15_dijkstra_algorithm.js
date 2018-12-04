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
  A: {
    B: 2,
    C: 7
  },
  B: {
    D: 1,
    E: 8
  },
  C: {
    B: 3,
    E: 12
  },
  D: {
    E: 4,
    F: 7
  },
  E: {
    F: 4
  },
  F: {}
};

function setup(graph, start) {
  let nodes = Object.keys(graph)
  for (let node of nodes) {
    if (node == start) {
      graph[node].score = [0, start]
    } else {
      graph[node].score = [Infinity, '']
    }
  }
  return graph
}

function setValues(graph) {
  let nodes = Object.keys(graph)
  for (let a of nodes) {
    for (let b of Object.keys(graph[a])) {
      if (b !== 'score') {
        if (graph[b].score[0] > graph[a][b] + graph[a].score[0]) {
          graph[b].score[0] = graph[a][b] + graph[a].score[0]
          graph[b].score[1] = a
        }
      }
    }
  }
  return graph
}

function condenseRoute(graph, start, end) {
  let result = {}
  result.distance = graph[end].score[0]
  result.path = []
  let currentNode = end
  let pathExists = true
  while (pathExists) {
    result.path.push(currentNode)
    currentNode = graph[currentNode].score[1]
    if (currentNode === start) {
      if (result.path.includes(currentNode)) {
        return result
      } else {
        result.path.push(currentNode)
        result.path.reverse()
        return result
      }
    }
  }
}

function validPath(graph, start, end) {
  let canReach = [start]
  for (let node of canReach) {
    if (node !== 'score') {
      for (let subNode of Object.keys(graph[node])) {
        canReach.push(subNode)
      }
    }
  }
  if (canReach.includes(end)) {
    return true
  }
  return false
}

const dijkstra = (graph, start, end) => {
  if (validPath(graph, start, end)) {
    let values = setValues(setup(graph, start))
    return condenseRoute(values, start, end)
  } else {
    return {
      distance: Infinity,
      path: []
    }
  }
}

var assert = require('assert');

describe('Find shortest path', function () {
  context('When there is a valid path and start is different from end', function () {
    it('Should return the distance 11 from A to F with path A,B,D,E,F', function () {
      assert.deepEqual({
        distance: 10,
        path: ['A', 'B', 'D', 'F']
      }, dijkstra(problem, 'A', 'F'))
    })
    it('Should return the distance 9 from B to F with path B,D,E,F', function () {
      assert.deepEqual({
        distance: 8,
        path: ['B', 'D', 'F']
      }, dijkstra(problem, 'B', 'F'))
    })
  })
  context('When there is no path between the start and end', function () {
    it('Should return the distance Infinity if there is no path', function () {
      assert.deepEqual({
        distance: Infinity,
        path: []
      }, dijkstra(problem, 'B', 'A'));
    })
  })
  context('When the start and end are the same', function () {
    it('Should return a distance of 0 from B to B with path B', function () {
      assert.deepEqual({
        distance: 0,
        path: ['B']
      }, dijkstra(problem, 'B', 'B'));
    })
  })
})