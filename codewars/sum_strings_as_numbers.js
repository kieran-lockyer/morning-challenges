// function sumStrings(a, b) {
//     if (a === '') return b
//     if (b === '') return a
//     a = a.split('').reverse().join('')
//     b = b.split('').reverse().join('')
//     let result = ''
//     let remainder = 0
//     let bigger
//     a.length > b.length ? bigger = a : bigger = b
//     for (let num in bigger) {
//         let nextDigit = parseInt(a[num]) + parseInt(b[num]) || parseInt(bigger[num]) + 0
//         if (remainder > 0) {
//             nextDigit += 1
//             remainder -= 1
//         }
//         if (nextDigit > 9) {
//             nextDigit -= 10
//             remainder += 1
//         }
//         result += nextDigit.toString()
//     }
//     if (remainder > 0) {
//         result += '1'
//     }
//     return result.split('').reverse().join('').match(/[1-9]\d*/)[0]
// }

function sumStrings(a, b) {
    if (a === '') return b
    if (b === '') return a
    a = a.split('').reverse()
    b = b.split('').reverse()
    let bigger
    let smaller
    a.length > b.length ? bigger = a : bigger = b
    a.length < b.length ? smaller = a : smaller = b
    if (a.length == b.length) bigger = a, smaller = b
    result = bigger.map((x, y) => parseInt(x) + parseInt(smaller[y]) || parseInt(x) + 0)
    return result.reverse().join('')
}

console.log(sumStrings('4999', '5001'))