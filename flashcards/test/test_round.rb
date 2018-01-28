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
    @guess_1 = Guess.new("Juneau", @card_1)
    @guess_2 = Guess.new("2", @card_2)
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_round_class
    assert_instance_of Round, @round
  end

  def test_for_deck_argument
    assert_equal @deck, @round.deck
  end

  def test_for_current_card_method
    assert_equal @card_1, @round.current_card
    assert_equal @card_2, @round.current_card
  end

  def test_for_guesses_method
    assert_equal [], @round.guesses
  end

  def test_for_record_guess_method
    assert @guess_1 == @round.record_guess("Juneau")
    assert @guess_2 == @round.record_guess("2")
  end

  def test_for_guesses_count_method
    @round.record_guess("Juneau")
    assert_equal 1, @round.guesses.count
    @round.record_guess("2")
    assert_equal 2, @round.guesses.count
  end

  def test_for_round_guesses_first_feedback_method
    @round.record_guess("Juneau")
    assert_equal "Correct!", @round.guesses.first.feedback
    @round.record_guess("2")
    assert_equal "Incorrect.", @round.guesses.last.feedback
  end

  def test_for_number_correct_method
    @round.record_guess("Juneau")
    assert_equal 1, @round.number_correct
    @round.record_guess("2")
    assert_equal 1, @round.number_correct
  end

  def test_for_percent_correct_method
    @round.record_guess("Juneau")
    @round.record_guess("2")
    @round.number_correct
    assert_equal 50, @round.percent_correct
  end

end
