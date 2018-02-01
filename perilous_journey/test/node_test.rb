orequire './lib/node'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test

  def test_node_class_exists_and_initial_arguments
    node = Node.new("Burke")
    assert_instance_of Node, node
    assert_equal "Burke", node.surname
    assert_nil  node.next_node
  end

end
