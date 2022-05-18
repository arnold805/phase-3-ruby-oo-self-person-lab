class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

# fufilled via attr_accessor
#   def bank_account=(value)
#     @bank_account = bank_account
#   end

#   def bank_account
#     @bank_account
#   end

# fufilled via attr_reader
#   def happiness
#     @happiness
#   end

  def happiness=(value)
    if value.between?(0,10)
      @happiness = value
    elsif value > 10
        @happiness = 10
    elsif value < 0
        @happiness = 0
    end
  end

  def hygiene=(value)
    if value.between?(0,10)
      @hygiene = value
    elsif value > 10
        @hygiene = 10
    elsif value < 0
        @hygiene = 0
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
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
        [self, friend].each {|person| person.happiness -= 2}
        "blah blah partisan blah lobbyist"
    when "weather"
        [self, friend].each {|person| person.happiness += 1}
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah" 
    end
  end

end