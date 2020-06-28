require_relative './spec_helper'

RSpec.describe 'money' do
  describe 'Dollar#times' do
    context 'when Dallar Class initialized with Integer 5, '\
            'and #times method is called with Integer 2 as first args' do
      it 'changes amount attr to 10' do
        five = Dollar.new(5)
        five.times(2)
        expect(five.amount).to eq 10
      end
    end
  end
end
