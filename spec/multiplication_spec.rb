# frozen_string_literal: true

class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    Dollar.new(amount * another_number)
  end

  def equals(another_dollar)
    another_dollar.amount == amount
  end
end

RSpec.describe 'Multiplication' do
  describe '#times' do
    it 'can multiply continuously with the same amount' do
      five = Dollar.new(5)
      product = five.times(2)
      expect(product.amount).to eq(10)

      product = five.times(3)
      expect(product.amount).to eq(15)
    end
  end

  describe '#equals' do
    it 'can test equality' do
      expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
      expect(Dollar.new(5).equals(Dollar.new(6))).to be_falsy
    end
  end
end
