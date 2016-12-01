require('./lib/game')
class Player
  attr_accessor(:hand)

  define_method(:initialize) do
    # @hand = []
    @hand = Game.deal()

  end


end

# Game.build_deck()
# Game.shuffle()
#
# player1 = Player.new()
# player2 = Player.new()
#
# p player1.hand()
# p player2.hand()
# p Game.deck.length
