require_relative 'card'


class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    create_cards
  end

  def deal
    cards.pop
  end

  def shuffle
    @cards.shuffle!
  end

  def reset
    create_cards
  end

  def values
    cards.map{ |card| card.values }
  end

  private
  def create_cards
    @cards = []
    Card.suits.each do |suit|
      (1..13).each do |num|
        cards << Card.new(num, suit)
      end
    end
  end

end
