require_relative "deck"

class Hand

  attr_reader :cards

  def initialize(cards)
    @cards = cards.sort_by { |card| card.value }
  end

  HAND_VALUES = {
                :royal_flush => 10,
                :straight_flush => 9,
                :four_of_a_kind => 8,
                :full_house => 7,
                :flush  => 6,
                :straight => 5,
                :three_of_a_kind => 4,
                :two_pairs => 3,
                :one_pair => 2,
                :high_card => 1
              }

  def check_hand
    return :royal_flush if royal_flush?
    return :straight_flush if straight_flush?
    return :four_of_a_kind if four_of_a_kind?
    return :full_house if full_house?
    return :flush if flush?
    return :straight if straight?
    return :three_of_a_kind if three_of_a_kind?
    return :two_pairs if two_pairs?
    return :one_pair if one_pair?
    return :high_card
  end

  def royal_flush?
    card_values = get_values
    if card_values == [10, 11, 12, 13, 14] && flush?
      true
    else
      false
    end
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    values = get_values
    values.any? { |value| values.count(value) == 4}
  end

  def full_house? #only valid if tested after four_of_a_kind?
    values = get_values
    values.uniq.length == 2 && values.any? { |value| values.count(value) == 3}
  end

  def flush?
    card_suits = get_suits
    card_suits.all? { |el| el == card_suits.first }
  end

  def straight?
    first = @cards.first.value
    compare = (first..first+4).to_a
    compare == get_values
  end

  def three_of_a_kind?
    values = get_values
    values.any? { |value| values.count(value) == 3 }
  end

  def two_pairs?
    values = get_values
    values.uniq.length == 3
  end

  def one_pair?
    values = get_values
    values.uniq.length == 4
  end

  def high_card?
    values = get_values
    values.uniq.length == 5
  end


  def get_values
    @cards.map { |card| card.value }
  end

  def get_suits
    @cards.map { |card| card.suit }
  end

end
