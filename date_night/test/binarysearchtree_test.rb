require './lib/binarysearchtree.rb'
require './lib/node.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @root = Node.new(50, "blub")
  end

  def test_binarysearchtree_class_exists
    tree = BinarySearchTree.new
    assert_instance_of BinarySearchTree, tree
  end

  def test_for_root_argument
    tree = BinarySearchTree.new
    assert_nil tree.root
    tree = BinarySearchTree.new(10)
    assert_equal 10, tree.root
  end

  def test_for_current_node_argument
    tree = BinarySearchTree.new
    assert_nil tree.current_node
    tree = BinarySearchTree.new(10)
    assert_equal 10, tree.current_node
  end

  def test_for_go_left_method
    
  end

end
