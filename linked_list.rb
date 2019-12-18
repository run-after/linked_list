class LinkedList
  attr_accessor :name
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    
    if @head == nil
      @head = value
      @tail = value
    else
      @tail.next_node = value
      @tail = value
    end
  end

  def prepend(value)
    if @head == nil
      @head = value
      @tail = value
    else
      temp = @head
      @head = value
      @head.next_node = temp
    end
  end

  def size
    return 0 if @head == nil
    i = 0
    entry = @head
    until entry == nil
      entry = entry.next_node
      i += 1
    end
    return i
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    entry = @head
    i = 1
    if entry == nil
      return "Index doesn't exist"
    end 
    until i == index
      entry = entry.next_node
      i += 1
    end
    return entry
  end

  def pop
    entry = @head
    until entry == nil
      if entry.next_node == @tail
        @tail = entry
        @tail.next_node = nil
      end
      entry = entry.next_node
    end
  end
  
  def contains?(value)
    return false if @head == nil
    entry = @head
    until entry == nil
      if entry.value == value
        return true
      end
      entry = entry.next_node
    end
    return false
  end

  def find(value)
    i = 0
    entry = @head
    until entry == nil
      if entry.value == value
        return i
      end
      entry = entry.next_node
      i += 1
    end
    return nil
  end

  def to_s
    i = 1
    entry = @head
    until entry == nil
      print "( #{entry.value} ) => "
      entry = entry.next_node
      i += 1
    end
    print " nil"
  end
  ###################### EXTRA CREDIT ####################
  def insert_at(index, new_node)
    i = 0
    entry = @head
    while i < index - 1
      entry = entry.next_node
      i += 1
    end
    new_node.next_node = entry.next_node
    entry.next_node = new_node
    entry = entry.next_node
  end
  
  def remove_at(index)
    i = 0
    entry = @head
    while i < index - 1
      entry = entry.next_node
      i += 1
    end
    entry.next_node = entry.next_node.next_node
  end
end

class Node
  attr_accessor :next_node, :value
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

list = LinkedList.new
list.append(Node.new("A"))
list.append(Node.new("B"))
list.append(Node.new("C"))
list.prepend(Node.new("c"))
list.prepend(Node.new("b"))
list.prepend(Node.new("a"))
list.to_s
puts
fresh = Node.new(69)
list.insert_at(3, fresh)
list.to_s
puts
list.remove_at(3)
list.to_s
puts
=begin
puts
puts "list.size:"
puts list.size
puts
puts "list.to_s:"
puts list.to_s
puts
puts "list.contains?(\"C\")"
puts list.contains?("C")
puts
puts "(list.pop)"
list.pop
puts
puts "list.to_s:"
puts list.to_s
puts
puts "list.contains?(\"C\")"
puts list.contains?("C")
puts
puts "list.find(\"B\")"
puts list.find("B")
puts
puts "list.head:"
p list.head
puts
puts "list.tail:"
p list.tail
puts
puts "list.at(3):"
p list.at(3)
puts
=end