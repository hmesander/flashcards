require '../lib/binarysearchtree.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @tree = BinarySearchTree.new
  end

  def test_binarysearchtree_class_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_for_insert_method
    assert 0, @tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert 1, @tree.insert(16, "Johnny English")
    assert 1, @tree.insert(92, "Sharknado 3")
    assert 2, @tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

end
