require '../lib/deck.rb'

class Round
  attr_reader :deck

  def initialize (deck)
    @deck = deck
  end

  def guesses
    []
  end

  def current_card
    Card.new("What is the capital of Alaska?", "Juneau")
  end

  def record_guess(guess)
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
  end

end

card = Card.new("What is the capital of Alaska?", "Juneau")
deck = Deck.new(card)
round = Round.new(deck)
puts round.record_guess("Juneau")
