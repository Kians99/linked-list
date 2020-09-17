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
linked_list.append(15)
linked_list.append(16)
linked_list.to_s





