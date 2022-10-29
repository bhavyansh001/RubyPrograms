class GreaterThan5
    def call
        puts "This ruby program gives the count of numbers greater than 5 in a given array."
        newArray = Array[17, 5, 6]
        count = count(newArray)
        puts "The count of numbers greater than 5 is: #{count}"
    end

private
def count(array)
    @count = 0
    for i in array
        if i > 5
            @count += 1
        end
    end
    @count
end
end

GreaterThan5.new.call