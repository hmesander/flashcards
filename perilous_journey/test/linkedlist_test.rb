require './lib/node.rb'
require './lib/linkedlist.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linkedlist_class_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_for_prepend_method
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    node_just_added = list.prepend("McKinney")
    assert_equal list.head.surname, node_just_added.surname
    assert_equal list.head.next_node.surname, "Brooks"
    assert_equal list.head.next_node.next_node.surname, "Henderson"
  end

  def test_for_append_method
    list = LinkedList.new
    assert_nil list.head
    node_just_added = list.append("West")
    assert_equal list.head.surname, node_just_added.surname
    node_just_added = list.append("Hardy")
    assert_equal list.head.next_node.surname, node_just_added.surname
    node_just_added = list.append("Mesander")
    assert_equal list.head.next_node.next_node.surname, node_just_added.surname
  end

  def test_for_insert_method
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    node_inserted = list.insert(1, "Lawson")
    assert_equal list.head.next_node.surname, node_inserted.surname
  end

  def test_for_next_node_method
    list = LinkedList.new
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_for_count_method
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
    list.append("Hardy")
    assert_equal 2, list.count
    list.append("Mesander")
    assert_equal 3, list.count
  end

  def test_for_to_string_method
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family.", list.to_string
  end

end
