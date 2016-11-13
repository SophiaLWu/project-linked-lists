# Represents a full linked list
class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  # Adds a node with data to the end of the linked list
  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      last_node = @head
      until last_node.next_node.nil?
        last_node = last_node.next_node
      end
      last_node.next_node = new_node
      @tail = new_node
    end
  end

  # Adds a node with data to the start of the linked list
  def prepend(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  # Returns the total number of nodes in the list
  def size
    node = @head
    count = 0
    until node.nil?
      count += 1
      node = node.next_node
    end
    count
  end

  # Returns the first node in the list
  def head
    @head
  end

  # Returns the last node in the list
  def tail
    @tail
  end

  # Returns the node at the given index
  # Returns nil if the given index is out of bounds
  def at(index)
    return nil if index < 0 || index >= self.size
    count = 0
    node = @head
    until index == count
      count += 1
      node = node.next_node
    end
    node
  end

end

# Represents a singular list in the linked list
class Node
  attr_accessor :data, :next_node

  def initialize(data=nil, next_node=nil)
    @data = data
    @next_node = next_node
  end

end