class Hand
  attr_reader :cards, :name
  def initialize( name, deck )
    @name = name
    @deck = deck
    @cards = []
    deal_hand
  end

  def deal_hand
    2.times do
      @cards << @deck.draw!
      if name == 'player'
        puts "Player was dealt: #{@cards.last.rank} #{@cards.last.suit}"
      end
    end
  end

  def calculate_score
    score = 0
    cards.each do |card|
      if card.facecard?
        score += 10
      elsif card.rank == 'A'
        score += 11
      else
        score += card.rank.to_i
      end
    end
    score
  end


end
