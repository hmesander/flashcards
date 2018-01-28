require '../lib/cardgenerator.rb'
require '../lib/card.rb'
require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'

class CardGeneratorTest < Minitest::Test

  def setup
    @filename = "../lib/cards.txt"
    @card_generator = CardGenerator.new(@filename)
  end

  def test_card_generator_class_exists
    assert_instance_of CardGenerator, @card_generator
  end

  def test_for_cards_argument
    @cards = @card_generator.cards.each do |card|
      assert_instance_of Card, card
    end
    assert_equal @cards.length, @card_generator.cards.length
  end

end
