class ResultPrinting
    def call
        puts "Welcome to the result portal!"
        roll_number = get_roll_number
        fetch(roll_number)
        roll_number
    end
private
    def get_roll_number
        print "Enter your roll number: "
        roll_number = gets.chomp.to_s
    end

class Students
    attr_accessor :name, :roll_number, :total_marks, :percentage, :dob
    def initialize(name_of_student, roll_number, total_marks, percentage, date_of_birth)
        @name = name_of_student
        @roll_number = roll_number
        @total_marks = total_marks
        @percentage = percentage
        @date_of_birth = date_of_birth
    end
end

def fetch(roll_number)

student1 = Students.new("Rahul", "100", "400", "80%", "20/02/2001")
student2 = Students.new("Dinesh", "101", "380", "79%", "08/05/2001")
student3 = Students.new("Mayank", "102", "378", "78%", "23/12/2000")
student4 = Students.new("Nitesh", "103", "302", "67%", "05/07/1999")
student5 = Students.new("Addwit", "104", "435", "87%", "12/02/2000")
student6 = Students.new("Shubh", "105", "480", "90%", "19/09/2002")

        case roll_number
        when "100"
            puts "Name: #{student1.name}"
            puts "Total marks obtained out of 500: #{student1.total_marks}"
            puts "Percentage: #{student1.percentage}"
        
        when "101"
            puts "Name: #{student2.name}"
            puts "Total marks obtained out of 500: #{student2.total_marks}"
            puts "Percentage: #{student2.percentage}"
        
        when "102"
            puts "Name: #{student3.name}"
            puts "Total marks obtained out of 500: #{student3.total_marks}"
            puts "Percentage: #{student3.percentage}"
        
        when "103"
            puts "Name: #{student4.name}"
            puts "Total marks obtained out of 500: #{student4.total_marks}"
            puts "Percentage: #{student4.percentage}"
        
        when "104"
            puts "Name: #{student5.name}"
            puts "Total marks obtained out of 500: #{student5.total_marks}"
            puts "Percentage: #{student5.percentage}"
        
        when "105"
            puts "Name: #{student6.name}"
            puts "Total marks obtained out of 500: #{student6.total_marks}"
            puts "Percentage: #{student6.percentage}"
        else
            puts "Input is invalid, check your credentials!"
        end
    end

end

ResultPrinting.new.call