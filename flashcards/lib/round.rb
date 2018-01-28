require '../lib/deck.rb'
require '../lib/guess.rb'

class Round
  attr_reader :deck,
              :guesses

  def initialize (deck)
    @deck                 = deck
    @guesses              = []
    @correct_count        = 0
    @card_number          = 0
  end

  def current_card
     @card_number += 1
     @card_number
  end

  def record_guess(response)
    @guesses << response
  end

  def number_correct
    @guesses.each do |guess|
      if guess.correct? == true
        @correct_count += 1
      end
    end
    @correct_count
  end

  def percent_correct
    ((@correct_count.to_f / @guesses.length) * 100).round
  end

end
