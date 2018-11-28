# frozen_string_literal: true

require './spec_helper'
require_relative '../lib/list_reverse'

RSpec.describe ListNode do
  let(:linked_list) { described_class.new((1..5).to_a + 'NULL')}	

  describe '#generate_list' do
    context 'should return list with elements separated by \'->\'' do
      before { result = ((1..5).to_a + 'NULL').join('->') }

 	  it 'return valid list' do
 	    expect(linked_list.generate_list).to eq result
  	  end
  	end
  end

  describe '#reverse_list'
  	context 'should return reversed list with last element equeal NULL' do
      before { result = ((1..5).to_a.reverse + 'NULL').join('->') }

	  it 'return valid reversed list' do
		expect(linked_list.reverse_list).to eq result
	  end
	end
  end
end