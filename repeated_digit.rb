class RepeatedDigit
    def call
        puts "This program analyzes a number to see if it has repeated digits in it!"
        number = get_digit
        array = split_to_array(number)
        if repeated_digit(array) != 0
            puts "The number has REPEATED digits!"
        else
            puts "The number has DISSIMILAR digits!"
        end
    end
private
    def get_digit
        print "Enter any number: "
        number = gets.chomp
        number
    end
    
    def split_to_array(num)
        num.split('').to_a
    end

    def repeated_digit(array)
        n = 1
        repeated = 0

        while n < array.size
            if array[0] == array[n]
                repeated += 1
            end
            n += 1
        end
        return repeated
    end

end

RepeatedDigit.new.call