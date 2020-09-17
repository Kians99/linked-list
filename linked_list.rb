require_relative 'node'

class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    return self.head = Node.new(value, nil) if self.head.nil?
    
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

  def tail
    return if head.nil?
    tmp = head
    tmp = tmp.next until tmp.next.nil?
    tmp 
  end

  def at(index)
    return puts "No node at that index!" if index >= self.size

    tmp = head
    index.times { tmp = tmp.next }
    tmp
  end

  def pop
    return if head.nil?
    tmp = head
    tmp = tmp.next until tmp.next.next.nil?
    tmp.next = nil 
  end
  
  def contains?(value)
    return if head.nil?
    tmp = head
    until tmp.nil?
      return true if tmp.value == value
      tmp = tmp.next
    end
    false
  end

  def find(value)
    return if head.nil?
    idx = 0
    tmp = head
    until tmp.nil?
      return idx if tmp.value == value

      tmp = tmp.next
      idx += 1
    end
    nil
  end

  def insert_at(value, index)
    return if head.nil?
    return nil if index >= self.size
    return prepend(value) if index == 0
    idx = 0
    tmp = head
    until tmp.nil?
      if idx + 1 == index
        tmp.next = Node.new(value, tmp.next)
        return value
      else
        tmp = tmp.next
        idx += 1
      end
    end
  end

  def remove_at(index)
    return if self.head.nil?
    return nil if index >= self.size
    if index == 0
      unless self.head.next.nil?
        self.head = self.head.next
        return
      end
      return nil
    end
    return self.pop if index == self.size - 1
    idx = 0
    tmp = self.head
    until tmp.nil?
      if idx + 1 == index
        tmp.next = tmp.next.next
        return index
      else
        tmp = tmp.next
        idx += 1
      end
    end
  end

  def to_s
    unless self.head.nil?
      puts ''
      tmp = self.head
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


































