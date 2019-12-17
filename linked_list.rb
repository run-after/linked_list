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

  def size
    return 0 if @head == nil
    i = 1
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

  end

  def find(value)

  end

  def to_s

  end

end

class Node
  attr_accessor :next, :data
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

