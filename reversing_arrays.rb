class ReversingArrays
    def call
        puts "This program will return reversed array!"
        size = get_size
        input_array = populate_array(size)
        puts "You entered: #{input_array}"
        rev_array = input_array.reverse
        puts "The reversed array is: #{rev_array}"
    end

private
    def get_size
        print "Enter the length of array: "
        length_of_Array = gets.to_i
    end

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

    def populate_array(size)
        array = Array.new
        i = 0
            while i < size
                numbering = th_place(i)
                print "Enter the #{i + 1}#{numbering} element: "
                array[i] = gets.chomp.to_i
                i += 1
            end
    array
    end
end

ReversingArrays.new.call