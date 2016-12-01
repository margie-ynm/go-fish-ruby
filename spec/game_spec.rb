require('rspec')
require('game')

describe(Game) do
  describe ('#build_deck') do
    it('will build the deck') do
      Game.build_deck()
      expect(Game.deck()).to(eq(Game.deck()))
    end
  end
  describe ('#build_deck') do
    it('will build the deck') do
      Game.build_deck()
      expect(Game.deck()).to(eq(Game.deck()))
    end
  end
end
