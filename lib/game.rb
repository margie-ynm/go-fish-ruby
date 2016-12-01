require('pry')
class Game
  @@deck=[]
  define_method(:initialize) do

  end
  define_singleton_method(:build_deck) do

    ranks=["A","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
    suits=["Hearts","Spades","Diamond","Clubs"]
    suits.each do |suit|
      ranks.each do |rank|
        @@deck.push(rank+" "+suit)
      end
    end
  end

  define_singleton_method(:deck) do
    @@deck
  end

  define_singleton_method(:shuffle) do
    @@deck.shuffle!()
  end

  define_singleton_method(:deal) do
    deal = @@deck.take(5)
    @@deck.slice!(0..4)
    deal
  end

end

# Game.build_deck()
# Game.shuffle()
# p Game.deal()
# p Game.deck.length
