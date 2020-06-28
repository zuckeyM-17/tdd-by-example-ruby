require_relative './spec_helper'

RSpec.describe 'money' do
  describe 'Dollar#times' do
    five = Dollar.new(5)
    context '引数に 整数 を取るとき' do
      it '金額が 与えられた 整数倍された Dollar クラスのインスタンスを返却する' do
        product = five.times(2)
        expect(product.amount).to eq 10
        product = five.times(3)
        expect(product.amount).to eq 15
      end
    end
  end
end
