class BinarySearchTree

  def initialize
    @left   = {}
    @node   = {}
    @right  = {}
  end

  def left_check(score, name)
    if @left == {}
      @left = {score => name}
      @level += 1
    else
      @level += 1
      insert(score, name)
    end
  end

  def right_check(score, name)
    if @right == {}
      @right = {score => name}
      @level += 1
    else
      @level += 1
      insert(score, name)
    end
  end

  def insert(score, name)
    @level = 0
    if @node == {}
      @node = {score => name}
      @level
    elsif score <= @node.keys[0]
      left_check(score, name)
    else
      right_check(score, name)
    end
  end

end
#
# tree = BinarySearchTree.new
# puts tree.insert(61, "Bill & Ted's Excellent Adventure")
# puts tree.insert(16, "Johnny English")
# puts tree.insert(92, "Sharknado 3")
# puts tree.insert(50, "Hannibal Buress: Animal Furnace")
