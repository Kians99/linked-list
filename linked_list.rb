require_relative 'node'

class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    return self.head = Node.new(value, nil) if head.nil?
    
    tmp = head
    tmp = tmp.next until tmp.next.nil?
    tmp.next = Node.new(value, nil)
  end

  def prepend(value)
    return self.head = Node.new(value, nil) if head.nil?

    self.head = Node.new(value, head)
  end

  def size
    tmp = head
    total = 0
    until tmp.nil?
      total += 1
      tmp = tmp.next
    end
    total
  end

  def to_s
    unless head.nil?
      puts ''
      tmp = head
      until tmp.nil?
        print "|#{tmp.value}| --> "
        tmp = tmp.next
      end
        puts "nil"
    else 
      puts "Head is nil!"
    end
    puts ''
  end
  
end


#tests

linked_list = LinkedList.new
linked_list.append(10)
linked_list.append(11)
linked_list.append(12)
linked_list.append(13)
linked_list.append(14)
linked_list.prepend(450)
linked_list.prepend(90)
linked_list.append(140)
linked_list.prepend(900)
linked_list.to_s
puts linked_list.size





