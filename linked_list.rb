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
    i = 0
    until @tail.next == nil
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)

  end

  def pop

  end

end

class Node
  attr_accessor :next, :data
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end