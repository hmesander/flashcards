require 'pry'
require_relative 'node.rb'

class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
    @data = []
  end

  def append(data)
      if @head == nil
        @data << data
        @head = Node.new(data)
      else
        @data << data
        next_node(data)
      end
  end

  def next_node(data)
    @head.next_node = Node.new(data)
  end

  def count
    @data.count
  end

  def to_string
   "The #{@data[0]} family, followed by the #{@data[1]} family"
  end

end
