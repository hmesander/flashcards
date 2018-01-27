require '../lib/round.rb'
require '../lib/deck.rb'
require '../lib/card.rb'
require '../lib/guess.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    @guess = Guess.new("Juneau", @card_1)
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_round_class_and_deck_argument
    assert_instance_of Round, @round
    assert @deck, @round.deck
  end

  def test_for_guesses_method
    assert [], @round.guesses
  end

  def test_for_current_card_method
    assert @card_1, @round.current_card
  end

  def test_for_record_guess_method
    assert @guess, @round.record_guess("Juneau")
  end

end
