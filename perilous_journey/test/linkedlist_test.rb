require './lib/node'
require './lib/linkedlist'
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

  def test_for_list_count_method
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.list_count
    list.append("Hardy")
    assert_equal 2, list.list_count
    list.append("Mesander")
    assert_equal 3, list.list_count
  end

  def test_for_to_string_method
    list = LinkedList.new
    list.append("Brooks")
    assert_equal "The Brooks family", list.to_string
    list.append("Henderson")
    assert_equal "The Brooks family, followed by the Henderson family", list.to_string
    list.prepend("McKinney")
    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
  end

  def test_for_includes_method
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")

    assert list.includes?("Brooks")
    refute list.includes?("Chapman")
    refute list.includes?("Bob")
  end

  def test_for_pop_method
    list = LinkedList.new
    second_from_last = list.append("Brooks")
    last = list.append("Henderson")
    third_from_last = list.prepend("McKinney")
    first = list.prepend("Mesander")
    list.prepend("Smith")

    assert_equal last, list.pop
    assert_equal second_from_last, list.pop
    assert_equal third_from_last, list.pop
    assert_equal "The Smith family, followed by the Mesander family", list.to_string
  end

  def test_for_find_method
    list = LinkedList.new
    list.append("Brooks")
    list.append("McKinney")
    list.append("Smith")
    list.append("Mesander")
    assert_equal "The Brooks family", list.find(0,1)
    assert_equal "The Brooks family, followed by the McKinney family", list.find(0,2)
  end

end
