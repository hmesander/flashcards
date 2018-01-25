require '../lib/flashcards_guess.rb'
require '../lib/flashcards_card.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class FlashCardsGuessTest < Minitest::Test

  def test_guess_class_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_instance_of Guess, guess
  end

  def test_for_response_argument
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Juneau", guess.response
  end

  def test_for_card_argument
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal card.inspect, guess.card
  end

  def test_for_correct_argument
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "true", guess.correct?
  end

  def test_for_feedback_method
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Correct!", guess.feedback
  end

end
