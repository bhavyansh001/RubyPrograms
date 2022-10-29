class SumOfPrimes
    def call
        require 'prime'
        puts "This program gives the sum of Primes from an array provided by the user!"
        size = get_size
        array = populate_array(size)
        puts "The array formed from the data entered is: #{array}"

        array_of_primes = array.select{|i| i.prime?}
        puts "The array of primes from the given array is: #{array_of_primes}"

        sum = array_of_primes.reduce(0) { |sum, n| sum + n }
        print "The sum of prime numbers from the given array is: #{sum}"

    end

private
    def get_size
        print "Enter the size of array: "
        sizeOfArray = gets.to_i
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
SumOfPrimes.new.call