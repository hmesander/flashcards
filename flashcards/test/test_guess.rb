require '../lib/guess.rb'
require '../lib/card.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class GuessTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Which planet is closest to the sun?", "Mercury")
    @guess_1 = Guess.new("Juneau", @card_1)
    @guess_2 = Guess.new("Saturn", @card_2)
  end

  def test_guess_class_exists
    assert_instance_of Guess, @guess_1
  end

  def test_for_response_argument
    assert "Juneau", @guess_1.response
  end

  def test_for_card_argument
    assert @card_1, @guess_1.card
  end

  def test_for_correct_method
    assert @guess_1.correct?
    refute @guess_2.correct?
  end

  def test_for_feedback_method
     assert "Correct!", @guess_1.feedback
     assert "Incorrect", @guess_1.feedback
  end

end
