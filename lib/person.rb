class Person
    attr_accessor :bank_account, :salary
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @salary = salary
    end

    def happiness=(happiness)
        @happiness = happiness
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end

    #def name
    #    @name
    #end

    #def bank_account(balance)
    #    @balance = balance
    #end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
      self.hygiene=(@hygiene + 4)
      '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
      self.hygiene=(@hygiene - 3)
      self.happiness=(@happiness + 2)
      return '♪ another one bites the dust ♫'
    end

    def call_friend(person)
      person.happiness=(person.happiness + 3)
      self.happiness=(@happiness + 3)
      "Hi #{person.name}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
          person.happiness=(@happiness - 2)
          self.happiness=(@happiness - 2)
          'blah blah partisan blah lobbyist' 
        elsif topic == 'weather'
          person.happiness=(@happiness + 1)
          self.happiness=(@happiness + 1)
          'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end


end
