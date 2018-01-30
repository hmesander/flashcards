class Node
  attr_reader :surname, :next_node

  def initialize(surname, next_node=nil)
    @surname = surname
  end

end
