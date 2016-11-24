require "deck"

describe "Deck" do
  subject(:deck) { Deck.new }
  describe "#initialize" do
    it "contains 52 cards" do
      expect(deck.cards.count).to eq(52)
    end
    it "contains 52 unique cards" do
      expect(deck.cards.uniq).to eq(deck.cards)
    end
    it "contains 13 different hearts" do
      hearts = deck.cards.select { |card| card.suit == :heart }
      expect(hearts.count).to eq(13)
      expect(hearts.uniq).to eq(hearts)
    end
  end

  describe "#shuffle" do
    it "shuffles the deck" do
      ordered_cards = deck.cards.dup
      deck.shuffle
      expect(deck.cards.length).to eq(ordered_cards.length)
      expect(deck.cards).to_not eq(ordered_cards)
    end
  end
end
