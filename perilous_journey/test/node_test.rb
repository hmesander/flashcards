require './lib/node'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test

  def test_node_class_exists
    node = Node.new("Burke")
    assert_instance_of Node, node
  end

  def test_node_surname_when_initialized
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_next_node_is_nil_when_initialized
    node = Node.new("Burke")
    assert_nil node.next_node
  end

  def test_if_node_has_supplies
    node = Node.new("Smith")
    assert_nil node.supplies
    node = Node.new("Smith", {"pounds of food" => 200})
    assert_equal 200, node.supplies["pounds of food"]
    assert_equal "pounds of food", node.supplies.key(200)
  end

end
