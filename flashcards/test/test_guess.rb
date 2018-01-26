require '../lib/guess.rb'
require '../lib/card.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class GuessTest < Minitest::Test

  def setup
    @card1 = Card.new("What is the capital of Alaska?", "Juneau")
    @guess1 = Guess.new("Juneau", @card1)
    @guess2 = Guess.new("Saturn", @card1)
  end

  def test_guess_class_exists
    assert_instance_of Guess, @guess1
  end

  def test_for_response_argument
    assert_equal "Juneau", @guess1.response
  end

  def test_for_card_argument
    assert_equal @card1, @guess1.card
  end

  def test_for_correct_method
    assert true, @guess1.correct?
    assert false, @guess2.correct?
  end

  def test_for_feedback_method
     assert "Correct!", @guess1.feedback
     assert "Incorrect", @guess1.feedback
  end

end
