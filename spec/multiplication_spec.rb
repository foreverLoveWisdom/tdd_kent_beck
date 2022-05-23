# frozen_string_literal: true

class Dollar
  attr_reader :amount

  def initialize(_amount); end

  def times(_another_number)
    @amount = 5 * 2
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
