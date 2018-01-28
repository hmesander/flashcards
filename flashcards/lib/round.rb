require '../lib/deck.rb'
require '../lib/guess.rb'
require 'pry'

class Round
  attr_reader :deck,
              :guesses

  def initialize (deck)
    @deck                   = deck
    @guesses                = []
    @correct_count          = 0
    @card_number_position   = 0
  end

  def current_card
    @current_card = @deck.cards[@card_number_position]
    @card_number_position += 1
    @current_card
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    @guesses.last
  end

  def number_correct
    correct_guesses_array = @guesses.select do |guess|
      guess.correct?
    end
    @correct_count = correct_guesses_array.length
  end

  def percent_correct
    ((@correct_count.to_f / @guesses.length) * 100).round
  end

end
