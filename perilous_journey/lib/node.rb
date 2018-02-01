class Node
  attr_reader :surname
  attr_accessor :next_node, :supplies

  def initialize(surname, supplies=nil, next_node=nil)
    @surname    = surname
    @supplies   = supplies
  end

end
