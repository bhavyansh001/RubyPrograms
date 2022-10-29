class PrimeNumber
    def call
        puts "This program takes numeric input from user and tells if the number is prime or not!"
        print "Enter a number: "
        num = get_number
        prime = prime_algo(num)

        if prime != 0                                                                           
            puts "The number is NOT a Prime number"
        else
            puts "The number is a Prime number!"
        end
        num
    end
private
def get_number
    num = gets.to_i
    num
end

def prime_algo(num)
n = num - 1
not_prime_count = 0
until n == 1
    if num == 1
        puts "The number is NOT a Prime number"
        exit
    elsif num % n == 0
        not_prime_count += 1
    end
    n -= 1
end

return not_prime_count
end

end

PrimeNumber.new.call
# Alternate way to check whether the number is Prime

# require 'prime'
# if $num.prime?
# puts "The number is prime"
# else
#     puts "Not Prime"
# end
