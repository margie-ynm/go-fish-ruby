require('./lib/game')

class Player
  attr_accessor(:hand,:score)

  define_method(:initialize) do
    @hand = Game.deal()
    @score = 0
  end

  define_method(:ask) do |card, opponent|
    cards_to_add = opponent.hand().select{|a| a.include?(card)}
    tmp=(opponent.hand()).select{|a|
      unless cards_to_add.include?(a)
        a
      end
      }
      if cards_to_add !=[]
        opponent.hand = tmp
        self.add(cards_to_add)
      else
       self.add(Game.takeOne())
     end
  end

  define_method(:add)do |cards|
    cards.each do |card|
      @hand.push(card)
    end
  end

  define_method(:checkMatches ) do
    self.hand.each do |card|
      tmp = self.hand().select{|a| a.include?(card.slice(0..1))}
        @hand.push(card)
      end
      if tmp == 4
        self.score+=1
      end
    end
end

Game.build_deck()
Game.shuffle()

player1 = Player.new()
player2 = Player.new()

p  player1.hand()
p  player2.hand()
player1.ask("10",player2)
player2.ask("2",player2)
player1.ask("3",player2)
player2.ask("A",player2)
player1.ask("9",player2)
player2.ask("7",player2)
player1.ask("A",player2)
player2.ask("3",player2)
player1.ask("4",player2)
player2.ask("2",player2)
player1.ask("10",player2)
player2.ask("10",player2)




p player1.hand()
p player2.hand()

player1.checkMatches()
p player1.score
# player1.checkwin()

# player1.ask(4,player2.hand()) #if true take card from player2 else draw from Game.deck, check for matches, check winner, player2 turn"
