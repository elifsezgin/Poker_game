class Deck

  attr_reader :cards

  def initialize
    @cards = fill_deck
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.pop
  end

  private

  def fill_deck
    deck = []
    suits = [:heart, :club, :spade, :diamond]
    suits.each do |suit|
      (2..14).each do |idx|
        deck << Card.new(idx, suit)
      end
    end
    deck
  end
end
