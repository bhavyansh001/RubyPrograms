class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def insert(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next
        current = current.next
      end
      current.next = new_node
    end
  end

  def delete(value)
    return if @head.nil?

    if @head.value == value
      @head = @head.next
      return
    end

    current = @head
    while current.next && current.next.value != value
      current = current.next
    end

    if current.next
      current.next = current.next.next
    end
  end

  def search(value)
    current = @head
    while current
      return current if current.value == value
      current = current.next
    end
    nil
  end

  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next
    end
    puts "nil"
  end
end

# Example usage:
list = LinkedList.new
list.insert(10)
list.insert(20)
list.insert(30)
list.insert(40)

list.display

list.delete(20)
list.display

puts list.search(30) ? "Found" : "Not Found"
puts list.search(50) ? "Found" : "Not Found"

