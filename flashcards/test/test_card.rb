require '../lib/card.rb'
require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'

class CardTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau")
  end

  def test_card_class_exists
    assert_instance_of Card, @card
  end

  def test_for_question_arugment
    assert_equal "What is the capital of Alaska?", @card.question
  end

  def test_for_answer_argument
    assert_equal "Juneau", @card.answer
  end

end
