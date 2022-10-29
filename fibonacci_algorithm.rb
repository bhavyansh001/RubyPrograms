class FibonacciAlgorithm
    def call
        puts "Fibonacci algorithm!"
        sequence_size
        length
        first_two
        fib_array
    end

    private
def sequence_size
    print "Enter the number of digits you wish to see in the sequence: "
    @length = gets.to_i
end
def first_two
    print "Enter the first digit of sequence: "
    @first_digit = gets.to_i
    print "Enter the second digit: "
    @second_digit = gets.to_i

end

def fib_array
    fibArray = Array.new
    fibArray[0] = @first_digit
    fibArray[1] = @second_digit
    n = 2
    while n < @length
    fibArray[n] = fibArray[n - 1] + fibArray[n - 2]
    n += 1
    end
    p fibArray
    fibArray
end

end

FibonacciAlgorithm.new.call