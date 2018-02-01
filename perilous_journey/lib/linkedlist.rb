require 'pry'
require_relative 'node'

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
    count = 1
    current_node = @head
    until position == count
      current_node = current_node.next_node
      count += 1
    end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def next_node
    @head.next_node
  end

  def count
    @list_count
  end

  def to_string
    response = ""
    if @head.next_node == nil
      "The #{head.surname} family"
    else
      response = "The #{@head.surname} family"
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        response += ", followed by the #{current_node.surname} family"
      end
      response
    end
  end

  def includes?(data)
    if to_string.include?(data)
      true
    else
      false
    end
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    puts "The #{current_node.next_node.surname} family has died of dysentery."
    last = current_node.next_node
    current_node.next_node = nil
    last
  end

  def find(index, number_of_elements)
    current_node = @head
    position = 0
    while position != index
      current_node = current_node.next_node
      position += 1
    end
    current_node = @head
    counter = 1
    while counter != number_of_elements
      current_node = current_node.next_node
      append(current_node.surname)
      counter += 1
    end
    to_string
  end

end
