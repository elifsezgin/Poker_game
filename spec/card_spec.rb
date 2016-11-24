require "card"

describe "Card" do
  subject(:clubs_5) { Card.new(5, :club) }
  describe "#initialize" do
    it "sets the card value and suit" do
      expect(clubs_5.value).to eq(5)
      expect(clubs_5.suit).to eq(:club)
      expect(clubs_5.id).to eq("5")
    end
  end
end
