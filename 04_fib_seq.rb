# 1. sit beside someone new, at a new spot :slightly_smiling_face:

# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).

<<<<<<< HEAD
# def fib_iter(num)
#     fibonacci = [1, 1]

#     while fibonacci.count() < num
#         fibonacci.push(fibonacci[-1] + fibonacci[-2])
#     end

#     num.times do |item|
#         puts "#{item + 1}. #{fibonacci[item]}"
#     end
# end

def fib_rec(num, arr = [1,1])
    if arr.count() == num
        return arr
    end
    fib_rec(num, arr.push(arr[-1] + arr[-2]))
end

# fib_iter(100)
fibonacci = fib_rec(100)
fibonacci.each_index {|fib| puts  "#{fib + 1}. #{fibonacci[fib]}"}
=======
# Generate and return the first 'count' values in the Fibonacci sequence
def fib(count)
    fib_sequence = [1, 1]
    count.times do |n|
        fib_sequence << fib_sequence[n] + fib_sequence[n+1]
    end
    return fib_sequence
end

puts fib(100)
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
