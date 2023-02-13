# your code goes here
# your code goes here
class Person
    # attr_accessor :name, :age

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8, get_paid = 100, take_bath = 4, work_out = 2, start_conversation = 1, happiness_points = 0, hygiene_points = 0, topic = 0, topic_points = 0, call_friend = 3)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @get_paid = get_paid
        @take_bath = take_bath
        @work_out = work_out
        @call_friend = call_friend
        @start_conversation = start_conversation
        @happiness_points = happiness_points
        @hygiene_points = hygiene_points
        @topic = topic


    end

    def name
        @name
    end

    def bank_account
        @bank_account 
    end

    def bank_account=(new_amount)
        @bank_account = new_amount
    end
    def happiness
        @happiness
    end

    def happiness=(new_happiness)
        if new_happiness > 10
            @happiness = 10
        elsif new_happiness < 0
            @happiness = 0
        else
            @happiness = new_happiness
        end
    end
    def hygiene
        @hygiene
    end

    def hygiene=(new_hygiene)
        if new_hygiene > 10
            @hygiene = 10
        elsif new_hygiene < 0
            @hygiene = 0
        else
            @hygiene = new_hygiene
        end
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
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
