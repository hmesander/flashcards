require './lib/node.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test

  def setup
    @test_score_value = 50
    @test_title_value = "blub"
    @node = Node.new(@test_score_value, @test_title_value)
  end

  def test_node_class_exists
    assert_instance_of Node, @node
  end

  def test_for_score_and_title_arguments
    assert_equal @test_score_value, @node.score
    assert_equal @test_title_value, @node.title
  end

  def test_left_and_right_are_nil_when_new_node_is_created
    assert_nil @node.left
    assert_nil @node.right
  end

end
