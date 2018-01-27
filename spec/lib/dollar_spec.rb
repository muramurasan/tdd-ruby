require 'spec_helper'
require 'dollar'

describe 'MoneyTest' do
  describe '#times' do
    let(:five) { Dollar.new(5) }

    it 'input 2' do
      product = five.times(2)
      expect(product) == Dollar.new(10)
    end

    it 'input 3' do
      product = five.times(3)
      expect(product) == Dollar.new(15)
    end
  end

  describe '#equals' do
    it { expect(Dollar.new(5).equals(Dollar.new(5))).to eq true }
    it { expect(Dollar.new(5).equals(Dollar.new(6))).to eq false }
  end
end
