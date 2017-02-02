class Card

  SUITS = [:heart, :diamond, :club, :spade]

  attr_reader :values

  def initialize(number, suit)
    raise "Card not valid, too high" unless (1..13).include?(number)
    raise "Card not valid, invalid suit" unless SUITS.include?(suit)

    @values = [number, suit]
  end

  def number
    values[0]
  end

  def suit
    values[1]
  end

  def self.suits
    SUITS
  end

end
