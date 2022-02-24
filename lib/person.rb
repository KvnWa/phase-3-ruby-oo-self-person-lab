class Person
    attr_accessor :bank_account, :hygiene, :happiness
    attr_reader :name

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def happiness=(num)
    @happiness = if num > 10
         10
    elsif num < 0
        0
     else 
      num
     end
    end

    def hygiene=(clean)
    @hygiene = if clean > 10
        10
    elsif clean < 0
         0
    else 
     clean
    end
end

    def happy?
      self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return ('♪ Rub-a-dub just relaxing in the tub ♫')
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return ('♪ another one bites the dust ♫')
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end


    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness-=2
            friend.happiness-=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness+=1
            friend.happiness+=1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end
            
    

end