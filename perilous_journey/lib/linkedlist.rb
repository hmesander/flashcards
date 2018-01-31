require 'pry'
require_relative 'node.rb'

class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
    @list_count = 0
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head == nil
      @list_count += 1
      @head = new_node
    else
      new_node.next_node = @head
      @list_count += 1
      @head = new_node
    end
  end

  def append(data)
    new_node = Node.new(data)
    if @head == nil
      @list_count += 1
      @head = new_node
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      @list_count += 1
      current_node.next_node = new_node
    end
  end

  def insert(position, data)
    new_node = Node.new(data)
    count = 0
    node = @head
    until position - 1 == count
      node = node.next_node
      count += 1
    end
    new_node.next_node = node.next_node
    node.next_node = new_node
  end

  def next_node
    @head.next_node
  end

  def count
    @list_count
  end

  def to_string
   "The #{@head.surname} family, followed by the #{@head.next_node.surname} family, followed by the #{@head.next_node.next_node.surname} family."
  end

end
