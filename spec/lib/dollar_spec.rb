require 'spec_helper'
require 'dollar'

describe 'MoneyTest' do
  it 'multiplication' do
    five = Dollar.new(5)
    five.times(2)
    expect(five.amount).to eq 10
  end
end