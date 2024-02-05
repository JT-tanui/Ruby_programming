puts("\t\tHello there, Welcome to the practise...")

# Inteactive Ruby (irb)“Interactive Ruby Shell”


=begin
# Module in RB - A container where we can store groups of methods 
require_relative "greetings.rb"#only when relative to current file

include Tools
Tools.sayhi("Job")
Tools.saybye("Tanui")

# Inheritance
class Chef
    def make_chicken
        puts "The chef makes chicken"
    end
    def make_salad
        puts "The chef makes salad"
    end
    def make_special_dish
        puts "The chef makes bbq ribs"
    end
end

class ItalianChef < Chef #This inherits the main class chef ...
    def make_pasta #Have just overide the parent method
        puts "The chef makes pasta"
    end
    def make_special_dish
        puts "The chef makes elegant parm"
    end
end

chef = Chef.new()
chef.make_special_dish

ItalianChef_chef = ItalianChef.new()
ItalianChef_chef.make_pasta


# A quiz game to put the class and intializations into action
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
 end

p1 = "What color are apples?\n(a)red(b)purple(c)orange"
p2 = "What color are bananas?\n(a)pink(b)purple(c)yellow"
p3 = "What color are pears?\n(a)yellow(b)green(c)orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got " + score.to_s + "/" +questions.length().to_s)
end
run_test(questions)



# object methods
class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end
    def has_honors
        if @gpa >= 3.5
            return true
        end
        return false
    end
end 

Student_j = Student.new("Job Tanui", "Computer programming", 4.5)
Student_u = Student.new("chris mugai", "Computer science", 2.5)

puts Student_j.has_honors

# initialization of classes
class Book 
    attr_accessor :tittle, :author, :pages
    def initialize(tittle, author, pages)
        @tittle = tittle
        @author = author
        @pages = pages
    end
end 
Book1 = Book.new("Phycology of money", "Robert green", 260)
# puts ("The book " + @tittle ", is written by " + @author " and it's page count is " + @pages)# does not work


# Classes and objects
class Book 
    attr_accessor :tittle, :author, :pages
end    

book1 = Book.new()
book1.tittle = "The art of human nature"
book1.author = "Robert green"
book1.pages = 242

puts book1.tittle

# error handling
nums = [4,67,8,98,6,4]
puts(nums[4])
begin
    nums["dogs"]
    num = 10 / 0 
# rescue Error => e
#     puts e #Shows the line the error is at.
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError => e
    puts e
end

#Appends oscar to file.txt
File.open("file.txt", "r+") do |file|
    file.readline()
    file.write("\nOscar, Rono")
    # file.readchar()
    # file.write("Hi")
end

class Dog 
    def set_name( aName )
    @myname = aName
    end
    def get_name
    return @myname
    end
    def talk
    return 'woof! woof!'
    end
end
mydog = Dog.new
mydog.set_name( 'boscow' )
puts(mydog.get_name)
puts(mydog.talk)


subtotal = 100.00
taxrate = 0.175 
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"


taxrate = 0.175 
print "Enter price (ex tax): "
s = gets
subtotal = s.to_f
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"


taxrate = 0.175 
print "Enter price (ex tax): "
s = gets
subtotal = s.to_f
if (subtotal < 0.0)
    puts("Most likely you entered a string")
    subtotal = 0.0 
end
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal+tax}"

The to_f converts string to floating point numbers else if it can't be converted it returns 0.0


puts( "\n\t#{(1 + 2) * 3}\n" )
# \t - indents it
# \n - Yet to know

def greatings
    print( 'Enter your name: ' )
    name = gets()
    puts( "Hello #{name}" )
   end

greatings()

def showname( aName )
    puts( "Hello #{aName}" )
    end

showname("Mercy")

def return_name( aFirstName = no_name, aSecondName = no_name)
    puts("Hello #{aFirstName} #{aSecondName}")
    return "Hello #{aFirstName} #{aSecondName}"
   end

return_name("Jayson", "Lemayian")

def return_name2 aFirstName = no_name, aSecondName = no_name
    puts("Hello #{aFirstName} #{aSecondName}")
    return "Hello #{aFirstName} #{aSecondName}"
   end

return_name2("Leylani", "chao")

https://github.com/JT-tanui/contributions

=end