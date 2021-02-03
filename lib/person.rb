# 1 First you need to create a person class that is initialized with a name that cannot be changed.
# 2 Each instance of class `Person`should be able to remember their name
# 3 Each instance of  class `Person` should start with $25 in their bank accounts
# 4 Each instance of  class `Person` should start with eight happiness points
# 5 Each instance of  class `Person` should start with eight hygiene points
# 6 The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and  0 respectively
# 7 The amount in the bank account should also be able to change, though it has no max or min.
require 'pry'

class Person 

    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

       

    def happiness=(num)
        @happiness = num
        @happiness = 10 if num > 10 
        @happiness = 0 if num < 0
    end 

    def hygiene=(num)
        @hygiene = num 
        @hygiene = 10 if num > 10
        @hygiene = 0 if num < 0
    end 

    def happy? 
        if @happiness > 7
            true
        else 
            false
        end 
    end 
    
    def clean? 
        if @hygiene > 7
            true
        else 
            false
        end 
    end 

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath 
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

end

person = Person.new("Zaphod")
#person.happiness(7)




