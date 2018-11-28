  # frozen_string_literal: true

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize
    @val = [1, 2, 3, 4, 5, 'NULL']
    @next = nil
  end

  def self.run
    new.run
  end

  def run
    linked_list = generate_list(@val)
    show_linked_list(linked_list)
    @next = reverse_list(linked_list)
    show_reversed_linked_list
  end

  def generate_list(value)
    value.join('->')
  end

  def show_linked_list(linked_list)
    print "#{linked_list}\n"
  end

  def reverse_list(linked_list)
    linked_list.split('->').reverse.rotate.join('->')
  end

  def show_reversed_linked_list
    print "#{@next}\n"
  end
end

ListNode.run