# your code goes here
# your code goes here
class Person 
    attr_reader :bank_account, :name
    attr_accessor :happiness, :hygiene
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    end
  
    # def happiness=(happiness)
    # if happiness < 11 || happiness > 0
    #   return false
    # else
    #   @happiness = happiness
    # end
    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0 
            @happiness = 0
        else happiness 
            @happiness = happiness
        end
    end

  
    def hygiene=(hygiene)
      if hygiene > 10
        @hygiene = 10
      elsif hygiene < 0
        @hygiene = 0
      else hygiene
        @hygiene = hygiene
    end 
  end
  
    def bank_account=(bank_account)
      @bank_account = bank_account
    end
    
    def happy?
      if @happiness > 7
        return true
      else 
        return false
      end
    end
  
    def clean?
      if @hygiene > 7
        return true
      else 
        return false
      end 
    end 
    
    def get_paid(salary)
      @bank_account += salary
      'all about the benjamins'
    end
  
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      friend.happiness += 3
      @happiness += 3
      "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation(friend, topic)
      if topic == 'politics'
        friend.happiness -= 1
        self.happiness -= 1
        return "blah blah partisan blah lobbyist"
      elsif topic == 'weather'
        friend.happiness += 1
        self.happiness += 1
        return  "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"    
      end
    end
  end
  
  anthony = Person.new('Anthony')
  tom = Person.new('Tom')
  
#   puts anthony.call_friend(tom)

   puts anthony.happiness = 11
  puts anthony.happiness