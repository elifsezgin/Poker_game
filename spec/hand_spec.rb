require "hand"

describe "Hand" do
  let(:card1) { double("card", value: 10, suit: :diamond) }
  let(:card2) { double("card", value: 11, suit: :diamond) }
  let(:card3) { double("card", value: 12, suit: :diamond) }
  let(:card4) { double("card", value: 13, suit: :diamond) }
  let(:card5) { double("card", value: 14, suit: :diamond) }
  let(:card6) { double("card", value:  5, suit: :spade  ) }
  let(:card7) { double("card", value:  5, suit: :diamond) }
  let(:card8) { double("card", value:  5, suit: :club   ) }
  let(:card9) { double("card", value:  5, suit: :heart) }
  let(:card10) { double("card", value: 10, suit: :heart) }
  # let(:card6) { double("card", value:  5, suit: :spade  ) }
  subject(:hand1) { Hand.new([card1, card2, card3, card4, card5]) }
  subject(:hand2) { Hand.new([card1, card2, card3, card4, card6]) }
  subject(:hand3) { Hand.new([card1, card9, card8, card7, card6]) }
  subject(:hand4) { Hand.new([card1, card10, card8, card7, card6]) }
  subject(:hand5) { Hand.new([card1, card10, card8, card7, card3]) }
  subject(:hand6) { Hand.new([card1, card10, card8, card4, card3]) }
  describe "#initialize" do
    it "contains 5 cards" do
      expect(hand1.cards.count).to eq(5)
    end
  end

  describe "#royal_flush?" do
    it "returns true" do
      expect(hand1.royal_flush?).to be true
    end
    it "returns false" do
      expect(hand2.royal_flush?).to be false
    end
  end

  describe "#straight_flush?" do
    it "returns true" do
      expect(hand1.straight_flush?).to be true
    end
    it "returns false" do
      expect(hand2.straight_flush?).to be false
    end
  end

  describe "#flush?" do
    it "returns true" do
      expect(hand1.flush?).to be true
    end
    it "returns false" do
      expect(hand2.flush?).to be false
    end
  end

  describe "#straight?" do
    it "returns true" do
      expect(hand1.straight?).to be true
    end
    it "returns false" do
      expect(hand2.straight?).to be false
    end
  end

  describe "#four_of_a_kind?" do
    it "returns true" do
      expect(hand3.four_of_a_kind?).to be true
    end
    it "returns false" do
      expect(hand2.four_of_a_kind?).to be false
    end
  end

  describe "#full_house?" do
    it "returns true" do
      expect(hand4.full_house?).to be true
    end
    it "returns false" do
      expect(hand2.full_house?).to be false
    end
  end

  describe "#three_of_a_kind?" do
    it "returns true" do
      expect(hand4.three_of_a_kind?).to be true
    end
    it "returns false" do
      expect(hand2.three_of_a_kind?).to be false
    end
  end

  describe "#two_pairs?" do
    it "returns true" do
      expect(hand5.two_pairs?).to be true
    end
    it "returns false" do
      expect(hand2.two_pairs?).to be false
    end
  end

  describe "#one_pair?" do
    it "returns true" do
      expect(hand6.one_pair?).to be true
    end
    it "returns false" do
      expect(hand5.one_pair?).to be false
    end
  end

  describe "#one_pair?" do
    it "returns true" do
      expect(hand6.one_pair?).to be true
    end
    it "returns false" do
      expect(hand5.one_pair?).to be false
    end
  end

  describe "#check_hand" do
    it "returns royal flush" do
      expect(hand1.check_hand).to eq(:royal_flush)
    end
    it "returns two_pairs" do
      expect(hand5.check_hand).to eq(:two_pairs)
    end
    it "returns four_of_a_kind" do
      expect(hand3.check_hand).to eq(:four_of_a_kind)
    end
  end

  describe "#discard" do
    it "deletes the given card from hand" do
      expect(hand1.cards.length).to eq(5)
      hand1.discard(card1)
      expect(hand1.cards.length).to eq(4)
    end
  end
end
