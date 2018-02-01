require './lib/wagontrain'
require './lib/linkedlist'
require './lib/node'
require 'minitest'
require 'minitest/pride'
require 'minitest/autorun'

class WagonTrainTest < Minitest::Test

  def test_wagontrain_class_exists
    wt = WagonTrain.new
    assert_instance_of WagonTrain, wt
  end

  def test_for_new_list_object_when_initialized
    wt = WagonTrain.new
    assert_nil wt.list.head
  end

  def test_for_append_method
    wt = WagonTrain.new
    head_added = wt.append("Burke")
    assert_equal wt.list.head, head_added
    next_node_added = wt.append("Smith")
    assert_equal wt.list.head.next_node, next_node_added
    assert_equal "Burke", wt.list.head.surname
  end

  def test_for_append_method_including_supplies
    wt = WagonTrain.new
    head_added = wt.append("Burke", {"pounds of food" => 200})
    assert_equal wt.list.head, head_added
  end

  def test_for_count_method
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    wt.append("Smith", {"bottles of medicine" => 3})
    assert_equal 2, wt.count
    wt.append("Mesander", {"blankets" => 4})
    assert_equal 3, wt.count
  end

  def test_for_supplies_list
    wt = WagonTrain.new
    wt.append("Burke", {"pounds of food" => 200})
    assert_equal {"pounds of food" => 200}, wt.supplies
    wt.append("Smith", {"fish" => 3})
    wt.append("Mesander", {"blankets" => 4})

    expected = {"pounds of food" => 200, "fish" => 3, "blankets" => 4}
    actual = wt.supplies

    assert_equal = expected, actual
  end

end
