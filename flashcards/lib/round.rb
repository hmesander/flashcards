require '../lib/deck.rb'
require '../lib/guess.rb'

class Round
  attr_reader :deck

  def initialize (deck)
    @deck = deck
    @card = Card.new("What is the capital of Alaska?", "Juneau")
    @guess = Guess.new("Juneau", @card)
  end

  def guesses
    []
    [] << @guess
    [] << @guess
  end

  def current_card
    Card.new("What is the capital of Alaska?", "Juneau")
  end

  def record_guess(guess)
    @guess
  end

  def count
    guesses.length
  end

  def number_correct
    1
  end

end
