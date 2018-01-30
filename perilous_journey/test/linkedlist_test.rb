require './lib/node.rb'
require './lib/linkedlist.rb'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class LinkedListTest < Minitest::Test

  def test_linkedlist_class_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_for_append_method
    list = LinkedList.new
    assert_nil list.head
    new_node = list.append("West")
    assert_equal list.head.surname, new_node.surname
  end

  def test_for_head_next_node_method
    list = LinkedList.new
    list.append("West")
    list.append("Smith")
  end


  def test_for_head_next_node_method
    list = LinkedList.new
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_for_count_method
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_for_to_string_method
    list = LinkedList.new
    list.append("West")
    assert_equal "The West family", list.to_string
  end

end
