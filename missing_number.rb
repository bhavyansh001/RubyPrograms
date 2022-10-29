class MissingNumber
    def call
puts "**Missing number game**"
puts "Enter 9 different digits between 1 to 10. The program will tell the missing digit:-"
array = populate_array
puts "You entered: #{array}"
array2 = array.sort
num = missing_number(array2)
puts "The missing number is #{num}"
num
    end
    
private

def th_place(k)
    case k
    when 0
        numbering = "st"
    when 1
        numbering = "nd"
    when 2
        numbering = "rd"
    else
        numbering = "th"
    end
return numbering
end

def populate_array
    array1 = Array.new
    k = 0
    while k < 9
        numbering = th_place(k)
        
        print "Enter the #{k + 1}#{numbering} digit: "
        array1[k] = gets.chomp.to_i
        k += 1
    end
    array1
end

def missing_number(array)
    i = 1
    j = 0
    while i <= 10
    if i == array[j]
        i += 1
        j += 1
    else
        puts "The missing number is: #{i}"
        exit
    end
    end
end

end

MissingNumber.new.call