require '../lib/deck.rb'
require '../lib/guess.rb'

class Round
  attr_reader :deck,
              :guesses

  def initialize (deck)
    @deck                 = deck
    @guesses              = []
    @correct_counter      = 0
  end

  def current_card
    @deck.cards.shift
  end

  def guesses
    @guesses
  end

  def record_guess(response)
    @guesses = @guesses.push(Guess.new(response, @deck.cards.shift))
  end

  def number_correct
    @guesses.each do |guess|
      if guess.feedback == "Correct!"
        @correct_counter += 1
      end
    end
    @correct_counter
  end

  def percent_correct
    @correct_counter / @guesses.count
  end

end
