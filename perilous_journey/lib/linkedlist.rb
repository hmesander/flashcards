require 'pry'
require_relative 'node.rb'

class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
    @node_number = 0
    @data = []
  end

  def append(data)
    if @head == nil
      @node_number += 1
      @data << data
      @head = Node.new(data)
    else
      @node_number += 1
      @most_recent_data = data
      @data << data
      next_node(data)
    end
  end

  def next_node(data)
    Node.new(data, @node_number)
  end

  def count
    @node_number
  end

  def to_string
    string_data = @data[0]
   "The #{string_data} family"
  end

end
