function binaryConvert(bin) {
    console.log(type(bin))
    let result = 0
    for (let x = 1; x <= bin.length; x++) {
        console.log(bin[-x])
        result += parseInt(bin[-x]) * (2 ** x)
    }
    return result
}

console.log(binaryConvert('0'))
console.log(binaryConvert('1'))
console.log(binaryConvert('10'))
console.log(binaryConvert('11'))
console.log(binaryConvert('100'))
console.log(binaryConvert('101'))
console.log(binaryConvert('110'))
console.log(binaryConvert('111'))