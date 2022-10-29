class Factorial
    def call
        puts "This program finds the factorial of a number!"
        get_number
        factorial = factorial(@number)
        puts "The factorial of #{@number} is #{factorial}"
        factorial
    end

private

def factorial(number)
    n = number - 1

    until n == 0
        number = number * n
        n -= 1
    end
number
end

def get_number
    print "Enter the number whose factorial is to be found: "
    @number = gets.to_i
end
end

Factorial.new.call