# print "Apple Bot"
# puts "Also prints"

# puts "3" #prints a new line afterwards
# print "4"
# puts "5"
# print "6"

# putc puts one character

#Printing a triangle
#Executes in order, line by line

# puts "      /\\"
# puts "     /__\\"
# puts "    /____\\"
# puts "   /______\\"
# puts "  /________\\"
# puts " /__________\\"
# puts "/____________\\"

# #Variable

# Subject_name = "sentence"

# puts ("Hello this is a sample " + Subject_name)
# puts ("this is an extension " + Subject_name + " of the " + Subject_name)
# #Value of variable can be changed.
# # Subject_name = "lol"
# puts ("hello, another " + Subject_name + ".")

#Data_types

# string = "plain text"
# number = 78 #can be -, .
# isPresent = true
# noValue = nil

# print number
# print isPresent
# print noValue

# irb in cmd gives Interactive Ruby IDE

# /
# /n

# String methods
# phrase = "hello there"

# phrase.upcase() 
# .downcase
# .strip (remove pre and post spaces)
# .length
# phrase.include? "there"
# Returns true
# phrase[0] gives H

# phrase[0,3] gives 0,1,2.
# phrase.index("e") tells position of char
# Returns 1.
# ("llo") can also be written
# num.to_s to convert to string

# Math and numbers

# puts 5 + 8 will give 13

# num = 11
# puts = ("the num is ) + num.to_s) 

# Methods-
# num.abs() for absolute value
# .round() 
# .ceiling() and.floor()

# Math.sqrt(49) 
# .log() 

# puts 10/7 will give 1 (integer) 
# puts 10/7.0 will give the exact (float) 


# print "Enter your name: "
# name= gets.chomp() { chomp so that new line doesn't appear}
# puts ("Hello" + name)

# print "Hey, enter your name: "
# name = gets()
# puts ("Hello " + name)

#Calculator

# puts "Enter a number: "
# num1 = gets.chomp()
# puts "Enter another number"
# num2 = gets.chomp()
# puts (num1 + num2)

#treats as string not numbers


# puts "Enter a number: "
# num1 = gets.chomp()
# puts "Enter another number"
# num2 = gets.chomp()
# puts (num1.to_i + num2.to_i)

#for decimal, use to_f

# puts "Enter a number: "
# num1 = gets.chomp()
# puts "Enter another number"
# num2 = gets.chomp()
# puts (num1.to_f + num2.to_f)


# Array

# friends = Array.new
# #then later add values like-
# friends[0] = "one"
# friends[4] = "extra"
# puts friends

# Name = Array["Apple", "Banana", "Orange", 1, true]
# puts Name
# puts Name[2]
# puts Name[-3] # from the last, last being -1.
# puts Name[0,3]
# puts Name.include? "Apple"
# puts Name.reverse

# nums = Array.new(10) { |e| e = e * 2 }
# puts "#{nums}"

#Modifying

# Name[1] = "Something"
# puts Name[1]

#methods
# .length
# include? "Apple"
# .reverse
# .sort # gives error if number included

#Hashes, has key value pairs

# object = {
#     "name" => "One",
#     "Course" => "Two",
#     "State" => "Three",
#     2 => "Four",
#     :namew => "what"
# }
# puts object
# puts object["State"]
# puts object[:namew]

# hash.new
# has various methods like hash.clear, == other_hash, invert, keys, length
# hash.delete_if { |key,value| block }

#methods {functions}
# def Say_hi
#     puts "Hello User"
# end

# def Say_hi(name = "no name")
#     puts ("Hello " + name)
# end

# Say_hi("User")

#when passing integers too, use to_s
#if default not given, error will be presented if no input given.

# 2**3 = 2^3

# puts "Enter a number"
# num = gets().to_i
# def cube(num)
#     num*num*num
# end

# puts "Enter a number"
# num = gets().to_i
# def cube(num)
#     num*num*num
    # 6 #in this case 6 will be printed
    # for returning what needs to be, use return

    #     if return used with more values, use ,
# end

# puts cube(num)

#if

# def max(num1, num2, num3)
#     if num1 >= num2 && num1 >= num3
#         return num1, "num1 is the largest"
#         elsif num2 >= num1 && num2 >= num3
#             return num2, "num2 is the largest"
#         else num3 >= num2 && num3 >= num1
#             return num3, "#{num3} is the largest"
#         end
# end

# puts max(34, 50, 95)
# num4 = 34
# puts num4.class #tells data type typeof

# def get_day_name(day) 
#     day_name= ""
    
#     if day == "mon"
#     day_name = "monday"... 
#     Is tedious
#     Use case
# print "Enter a number: "
# x = gets.chomp().to_i   #didnt work without to_i
# unless x < 10
#     puts "x is more than 10 (=#{x})"
# else
#     puts "x is less than 10 (=#{x})"
    
# end

# puts "***A program that'll tell the day when its number or three-letter abbreviation is provided.***"
# print "Enter the day's number or abbreviation: "
# day = gets.chomp().to_s
#     case day
#     when "sun", "1"
#     day_name = "Sunday"
#     puts day_name
#     when "mon", "2"
#     day_name = "Monday"
#     puts day_name
#     when "tue", "3"
#     day_name = "Tuesday"
#     puts day_name
#     when "wed", "4"
#     day_name = "Wednesday"
#     puts day_name
#     when "thu", "5"
#     day_name = "Thursday"
#     puts day_name
#     when "fri", "6"
#     day_name = "Friday"
#     puts day_name
#     when "sat", "7"
#     day_name = "Saturday"
#     puts day_name
#     else
#     day_name = "Invalid Input"
#     puts day_name
#     end
    
    
    # While loop-
    # i= 0
    # while i <= 7
    # puts i
    # i += 1
    # end

    #while modifier
    # i= 0
    # begin
    # puts i
    # i += 1
    # end while i <= 7

    # i = 0
    # until i > 10
    #     puts i
    #     i += 2
    # end

    #until modifier
    # i = 0
    # begin
    #     puts i
    #     i += 2
    # end until i > 10


#     For in

# name = ["one", "two"]
# for count in name
# puts count
# end
# # Similar is-
# name.each do |count|
# puts count
# end

# for index in 0...5  #using two periods will include 5
# puts index/2.to_f
# end

# 67.times do |index|
#     if index == 6
#         puts "***"
#         next
#     end
#     # if index == 8
#     #     redo                              infinite looping, retry is also similar
#     # end
#     if index == 11
#         break
#     end
# puts index
# end

# Methods

# def name(one = "Apple", two = "Banana")
#     puts one, two
# end

# name "okay"

# yield is used to call a block{} of code within a method, the names of method and block should be same

# def fruits
#     puts "a FRUIT NAME"
#     yield
#     puts "that's all"
# end

# fruits{
#     puts "Apple", "Banana" #parameters are passed using ||
# }

# BEGIN{} and END{} blocks can be used throughout. A program may include multiple BEGIN and END blocks. BEGIN blocks are executed in the order they are encountered. END blocks are executed in reverse order.


=begin
for comment spawning multiple lines,
but better to use #s
=end


# Reading file
# Modes are 6-7, like read (r) 
# File.open("/name of the file.txt", "r")  do |file|
# puts file.read().include? "" (Hence, a string is presented
# end

# file.readline()  for one line at a time
# file.readchar() reads one character

# To loop through each line
# For line in file.readlines() 
# puts line
# end

# file.readlines()[2] (gives an array) 


# Another way-
# File = File.open("name", "r")
# puts file.read

# file.close() is a must here

# Modifying file (append) 
# "a"

# file= File.open("name", "a") do |file|
# file.write ("\nwhatever, is to be appended") 
# end
# Gets appended on every execution

# "w" (Write) 
# Overwrites everything in the file
# To create html, 
# name it, with w mode
# file. write("html code") 

# r+ for read and write

# file.readline() (reads the line next, that is 2nd) 
# file.write("hi") 

# Error handling
# begin
# num = 10 / 0
# rescue name of error(ZeroDivisionError, TypeError => e (stores the error message in e) 
# puts "errorr"
# puts e
# end

# Only rescue can be used but it'll take all the errors and execute rescue for all of them

# Inheritance
# Class2 < Class1
# Overwrite if something is to be overwritten and obviously new can be defined


# Modules- group of methods

# module Tools
#     def Tool1
#         puts "This is tool 1"
#     end
#     def Tool2
#         puts "This is tool 2"
#     end
#     def Tool3
#         puts "This is tool 3"
#     end
# end

# include Tools
# Tools.Tool1


# To import methods from another file-

# require_relative "file_name.rb"
# include Tools
# Tools.method_name

# Variables in Ruby

# 1. Local variable- defined for a method.
# 2. Instance variable- starts with @.
# 3. Class variable- @@
# 4. Global variable- $

# '#'before the variable's name in string gives it's value
#Constants- defined with uppercase letters, like, VAR1 = 20
# for determining values of constant, #{VAR1} can be used; when wanting to display calculated output in a string, this way they are to be written.

# $global_v = "Apple"

# puts $global_v
# puts "The value is #$global_v"

# File I/O

# Ranges in Ruby-
# A range (1..5) means it includes 1, 2, 3, 4, 5 values and a range (1...5) means it includes 1, 2, 3, 4 values.

# putc "Apple"

# number = "45"
# splitted = number.split('') #works only on strings
# puts splitted[0]

# list = (1..10).to_a

# p list
# p list.collect { |i| i >= 3 && i <= 7 }
# p list.map { |i| i >= 3 && i <= 7 }
# p list.select { |i| i >= 3 && i <= 7 }, list.select{|el| el%2 == 0 }
# p list.each{|e| print e.to_s+"!" }
# p list.inject{|sum,e| sum += e }
# p list.reduce(0) { |sum, n| sum + n }
# p list.find{|el| el / 2 == 2 }
# p list.reject{|e| e==2 || e==8 }  #The opposite of select: runs an expression for each array element and includes that element in the output if the expression is false.
# class Person
#     attr_accessor :name, :surname, :age
#     def initialize(name,surname,age)
#       @name, @surname, @age = name, surname, age
#     end
#   end
  
#   people = []
#   people << Person.new("Daniel","Craig",43) #enterinng data in array
#   people << Person.new("Pierce","Brosnan",58)
#   people << Person.new("Sean","Connery",81)
  
#   p people.map { |p| p.surname }



# 1 .eql?(1.0) will return false, as values and type must be same for it.

# a = 1, b = 2 can be written as a, b = 1, 2 (parallel assignment)

# time1 = Time.new.to_s
# puts "Current Time : " + time1

# time = Time.new
# puts time.strftime("%d/%m/%y and %H:%M:%S")

# score = 70

# result = case score
#    when 0..40 then "Fail"
#    when 41..60 then "Pass"
#    when 61..70 then "Pass with Merit"
#    when 71..100 then "Pass with Distinction"
#    else "Invalid Score"
# end

# puts result

# if (('a'..'j') === 'c')
#     puts "c lies in ('a'..'j')"
#  end

# a = [1,2,3,4,5]
# b = a.collect{|x| 10*x}
# puts b

# Exeptions
# begin  
#     puts 'I am before the raise.'  
#     raise 'An error has occurred.'  
#     puts 'I am after the raise.'  
#  rescue
#     puts 'I am rescued.'
# ensure
#     puts "Always executes"
# end  
# puts 'I am after the begin block.'

# a1 = 2
# b1 = 2
# sol = a1 != b1
# puts sol

# puts "Classes and Objects"

# class Book
#     attr_accessor :title, :author, :pages
#     def simple
#         puts "In class Book"
#     end
#     # private :simple
#     # protected :simple
# end
    
#     book1 = Book.new
#     book1.title = "Apple"
#     book1.author = "Banana"
#     book1.pages = "Orange" 
    
#     puts book1.author
#     book1.simple
    
    # class Question
    # attr_accessor :prompt, :answer
    # def initialize (promp, answe)
    # @prompt = promp
    # @answer = answe
    # end
    # end

    # yes = Question.new("a", "answer12")
    # puts yes.answer

# class Rectangle
#     @@count = 0
#     attr_reader :width, :height
#     def initialize(width, height)
#         @width = width
#         @height = height
#         @@count += 1
#     end
# def self.printCount
#     puts "Rectangle count is : #@@count"
# end
# def getWidth
#     @width
#  end
#  def getHeight
#     @height
#  end
# def Area
#     @area = getWidth * getHeight
#     puts "Area of given rectangle is: #@area"
# end
# end

# new1 = Rectangle.new(10, 20)
# new2 = Rectangle.new(10, 30)
# out, out2 = new1.width, new2.height
# # puts out, out2
# # puts Rectangle.printCount

# # puts new1.Area, new2.Area

# #####################################

# class SmallRect < Rectangle
#     CONSTANT = "This is a constant, to call it from outside the class, classname::constant is to be used."
#     def self.newf
#         puts "Methods defined in sub/derived class can overwrite those in base/super class!"
#     end
# end
# neww = SmallRect.allocate #creates uninitialized object
# new3 = SmallRect.new(45, 56)
# new3.freeze #freezes the object, new parameters can't be set.
# froze = new3.frozen?
# puts froze
# out3 = new3.height
# puts out3
# puts SmallRect.newf
# puts SmallRect::CONSTANT


# class Factorial
#     def call
#         puts "This program finds the factorial of a number!"
#         get_number
#         factorial = factorial(@number)
#         puts "The factorial of #{@number} is #{factorial}"
#         factorial
#     end

# private

# def factorial(number)
#     n = number - 1

#     until n == 0
#         number = number * n
#         n -= 1
#     end
# number
# end

# def get_number
#     print "Enter the number whose factorial is to be found: "
#     @number = gets.to_i
# end
# end

# Factorial.new.call