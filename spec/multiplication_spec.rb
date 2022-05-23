# frozen_string_literal: true

class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    Dollar.new(amount * another_number)
  end
end

RSpec.describe 'Multiplication' do
  describe 'multiple' do
    it 'multiplies two numbers' do
      five = Dollar.new(5)
      product = five.times(2)
      expect(product.amount).to eq(10)

      product = five.times(3)
      expect(product.amount).to eq(15)
    end
  end
end
