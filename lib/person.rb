# your code goes here
require "pry"

class Person
    attr_reader :name # why cant i indicate "happiness" here?
    attr_reader :happiness
    attr_reader :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (value)
        if value >= 0 && value < 11 
            @happiness = value
        elsif value > 10
            @happiness = 10
        else 
            @happiness = 0
        end
    end

    def hygiene= (value)
        if value >= 0 && value < 11 
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        else 
            @hygiene = 0
        end
    end
    
    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        self.bank_account= (@bank_account + amount)
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= (@hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= (@happiness+2)
        self.hygiene= (@hygiene-3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness= (@happiness+3)
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      #  binding.pry
    end

    def start_conversation(friend, topic)
        result = ""
        if topic == "politics"
            result = 'blah blah partisan blah lobbyist'
            self.happiness= (@happiness-2)
            friend.happiness = friend.happiness - 2
        elsif topic == "weather"
            result = 'blah blah sun blah rain'
            self.happiness = self.happiness+1
            friend.happiness = friend.happiness + 1
        else
            result = 'blah blah blah blah blah'
        end
        result
    end
end