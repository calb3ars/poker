require "deck"

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "should initialize to have a standard 52-card deck" do
      expect(deck.cards.length).to eq(52)
    end

    it "should only include unique cards" do
      expect(deck.cards.uniq).to eq(deck.cards)
    end

  end

  describe "#deal" do
    let(:dealt_card) { Deck.new.cards.last }
    it "should return the top card in the deck" do
      expect(deck.deal.values).to eq(dealt_card.values)
    end

    it "should remove returned cards from the deck" do
      deck.deal
      expect(deck.cards).to_not include(dealt_card)
    end
  end

  describe "#shuffle" do
    let(:preshuffled_deck) { Deck.new }
    it "should return a shuffled deck of cards" do
      deck.shuffle
      expect(deck.values).to_not eq(preshuffled_deck.values)
    end
  end

  describe "#reset" do
    it "should reset deck to include standard 52 cards" do
      deck.reset
      expect(deck.cards.length).to eq(52)
    end
  end
end
