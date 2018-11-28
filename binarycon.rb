def binaryCon(input)
    if input.instance_of?(String)
        bin = input.reverse
        result = 0
        bin.length.times do |x|
            result += bin[x].to_i * (2 ** x)
        end
        return result
    else
        result = ''
        count = 0
        input.times do |x|
            if input >= 2 ** x
                count += 1
            else
                break
            end
        end
        while input > 0
            if 2 ** count <= input
                input -=  2 ** count
                result += '1'
            else
                result += '0'
            end
            count -= 1
        end
        return result
    end
end

100.times do |x|
    puts binaryCon(x)
    puts binaryCon(x.to_s)
end

