# frozen_string_literal: true

class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    @amount = amount * another_number
  end
end

RSpec.describe 'Multiplication' do
  describe 'multiple' do
    it 'multiplies two numbers' do
      five = Dollar.new(5)
      five.times(2)
      expect(five.amount).to eq(10)
    end
  end
end
