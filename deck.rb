class Deck
  SUITS  = ["♤", "♧", "♡", "♢"]
  VALUES = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "J", "Q", "K", "A"]
  attr_reader :collection

  def initialize
    @collection = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @collection << PlayingCard.new( value, suit )
      end
    end
    @collection.shuffle!
  end

  def draw!
    @collection.pop
  end
end
