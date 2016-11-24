class Player

  attr_reader :name

  def initialize(name, hand = nil)
    @name = name
    @hand = hand
  end

  def discard(card)
    #to be implemented
    hand.discard(card)
  end

  def fold
    #to be implemented
  end

  def see
    #to be implemented
  end

  def raise
    #to be implemented
  end
end
