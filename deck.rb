class Deck
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
