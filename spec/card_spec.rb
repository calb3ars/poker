require 'card'

describe Card do
subject(:card) { Card.new(3,:club) }
  describe "#initialize" do
    it "has a number" do
      expect(card.number).to eq(3)
    end

    it "has a suit" do
      expect(card.suit).to eq(:club)
    end

    it "raises an error if number is greater than 13" do
      expect{Card.new(20, :heart)}.to raise_error("Card not valid, too high")
    end

    it "raises an error if suit is invalid" do
      expect{Card.new(4, :racecar)}.to raise_error("Card not valid, invalid suit")
    end

  end

end
