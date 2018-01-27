require '../lib/round.rb'
require '../lib/deck.rb'
require '../lib/card.rb'
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

  def test_round_class
    assert_instance_of Round, @round
  end

  def test_for_deck_argument
    assert @deck, @round.deck
  end

  def test_for_guesses_method
    assert [], @round.guesses
  end

  def test_for_current_card_method
    assert @card_1, @round.current_card
    assert @card_2, @round.current_card
  end

  def test_for_record_guess_method
    assert @guess, @round.record_guess("Juneau")
    assert @guess, @round.record_guess("2")
  end

  def test_for_guesses_count_method
    assert_equal 1, @round.guesses.count
    assert_equal 2, @round.guesses.count
  end

  def test_for_round_guesses_first_feedback_method
    assert "Correct!", @round.guesses.first.feedback
  end

  def test_for_number_correct_method
    assert_equal 1, @round.number_correct
  end


end
