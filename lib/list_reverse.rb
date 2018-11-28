  # frozen_string_literal: true

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end

  def self.run
    new.run
  end

  def run
    generate_list
    show_linked_list
    @next = reverse_list
    show_reversed_linked_list
  end

  def generate_list
    value.join('->')
  end

  def show_linked_list
    print "#{linked_list}\n"
  end

  def reverse_list
    linked_list.split('->').reverse.rotate.join('->')
  end

  def show_reversed_linked_list
    print "#{@next}\n"
  end
end

ListNode.run((1..5).to_a + 'NULL')