require '../lib/flashcards_card.rb'
require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'

class FlashCardsCardTest < Minitest::Test

  def test_card_class_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of Card, card
  end

  def test_for_question_arugment
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_for_answer_argument
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "Juneau", card.answer
  end

end
