/*
Line 27 is calling 'sayGreetings' and handing it a callback 'sayNiceToMeetYou'
Line 28 is calling 'sayGreetings' and handing it a callback 'sayGoodbye'

Fix the 'sayGreetings' function so it runs the callback each time.
Use node 33_callbacksPartOne to check if you have the correct solution.

DESIRED OUTPUT:
Greetings!
Nice to meet you!
Greetings!
Goodbye!
*/

const sayGreetings = () => {
    console.log('Greetings!')
}
  
const sayNiceToMeetYou = () => {
    console.log('Nice to meet you!')
}

const sayGoodbye = () => {
    console.log('Goodbye!')
}

sayGreetings(sayNiceToMeetYou)
sayGreetings(sayGoodbye)