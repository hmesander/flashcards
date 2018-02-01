require_relative 'linkedlist'
require_relative 'node'

class WagonTrain
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data, supplies=nil)
    @list.append(data, supplies=nil)
  end

  def count
    @list.list_count
  end

end
