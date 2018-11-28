# frozen_string_literal: true

require 'rspec'
require_relative '../lib/list_reverse'

describe 'Reverse linked list' do
  before { @list_link = ListNode.new }

  it 'should return list with elements separated by \'->\'' do
    expect(@list_link.generate_list([1, 2, 3, 4, 5, 'NULL'])).to eq '1->2->3->4->5->NULL'
  end
  it 'should return reversed list with last element equeal NULL' do
    expect(@list_link.reverse_list('1->2->3->4->5->NULL')).to eq '5->4->3->2->1->NULL'
  end
end
