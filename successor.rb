class Successor
    def call
        puts "This program takes a number in input from the user and returns its successor!"

    take_number
    successor = addition(@num)
    puts "Successor of #{@num} is #{successor}"
    successor
    end
    
    private

    def take_number
        print "Enter a number: "
        @num = gets.to_i
    end
    def addition(number)
        number += 1
    end

end

Successor.new.call