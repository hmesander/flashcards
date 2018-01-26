require '../lib/deck.rb'
require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    @card_array = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@card_array)
  end

  def test_deck_class_exists
    assert_instance_of Deck, @deck
    assert [@card_1, @card_2, @card_3], @deck.cards
  end

end
