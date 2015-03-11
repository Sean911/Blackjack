require_relative 'playing_card'
require_relative 'deck'
require_relative 'hand'
require 'pry'





deck = Deck.new
#Deal initial hand
player1 = Hand.new("player", deck)
dealer = Hand.new("dealer", deck)







#Display score
puts player1.calculate_score
puts dealer.calculate_score


#Prompt player to hit or stand
