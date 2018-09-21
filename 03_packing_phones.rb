# 1. If you're sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.
#
# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 
#
#    The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm 
#
#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 
#
#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 
#
#    Keep it as simple as you can.

<<<<<<< HEAD
#set box dimensions
boxWidth = 32
boxLength = 43
boxHeight = 22.1

#phone dimesions
phoneDimensions = [5, 7.4, 4]

#set no of phones that can fit
phones = Hash.new
#set best score
max_phones = 0

phoneDimensions.permutation.each do |item|
    phoneWidth, phoneLength, phoneHeight = item[0], item[1], item[2]
    while true
        phones_width = 0
        phones_length = 0
        phones_height = 0
        while phones_width * phoneWidth <= boxWidth
            phones_width += 1
        end
        phones_width -= 1
        while phones_length * phoneLength <= boxLength
            phones_length += 1
        end
        phones_length -= 1
        while phones_height * phoneHeight <= boxHeight
            phones_height += 1
        end
        phones_height -= 1
        break
    end
    phones["Width: #{phoneWidth}, Length: #{phoneLength}, Height: #{phoneHeight}"] = phones_height * phones_length * phones_width
end

puts phones
puts "Maximum number of phones you can pack is #{phones.values.max}."





=======
phone = [5, 7.4, 4]
box = [32, 43, 22.1]

max_phones = 0
phone.permutation do |orient|
    print orient
    puts
    num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
    max_phones = num_phones if num_phones > max_phones
end

puts max_phones
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
