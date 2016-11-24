class Card
  attr_reader :value, :suit, :id 

  ID = {2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 7 => "7",\
        8 => "8", 9 => "9", 10 => "10", 11 => "Jack", 12 => "Queen",\
        13 => "King", 14 => "Ace" }

  def initialize(value, suit)
    @value = value
    @suit = suit
    @id = ID[value]
  end

end
