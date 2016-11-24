require "player"

describe "Player" do
  let(:card1) { double("card", value:  5, suit: :spade  ) }
  let(:card2) { double("card", value:  5, suit: :diamond) }
  let(:card3) { double("card", value:  5, suit: :club   ) }
  let(:card4) { double("card", value:  5, suit: :heart) }
  let(:card5) { double("card", value: 10, suit: :heart) }
  let(:hand1) { double("hand", cards: [card1, card2, card3, card4, card5]) }
  subject(:player1) { Player.new("Joe", hand1)}
  describe "initialize" do
    it "sets the name of the player" do
      expect(player1.name).to eq("Joe")
    end
  end
  # describe "discard" do
  #   it "removes one card from hand" do
  #     expect(player1.cards.length).to eq(5)
  #     player1.discard(card1)
  #     allow(hand1).to_receive(discard).with(card1)
  #     expect(player1.cards.length).to eq(4)
  #   end
  # end
  # describe "fold" do
  #   it "sets the name of the player" do
  #     expect(player1.name).to eq("Joe")
  #   end
  # end
  # describe "see" do
  #   it "sets the name of the player" do
  #     expect(player1.name).to eq("Joe")
  #   end
  # end
  # describe "raise" do
  #   it "sets the name of the player" do
  #     expect(player1.name).to eq("Joe")
  #   end
  # end
end
