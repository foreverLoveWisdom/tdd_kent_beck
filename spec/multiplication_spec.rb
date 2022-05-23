# frozen_string_literal: true

require 'pry-byebug'

class Dollar
  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    Dollar.new(amount * another_number)
  end

  def equals(another_dollar)
    another_dollar.amount == amount
  end

  private

  attr_reader :amount
end

RSpec.describe 'Multiplication' do
  describe '#times' do
    it 'can multiply continuously with the same amount' do
      five = Dollar.new(5)
      expect(Dollar.new(10)).to eq(five.times(2))

      expect(Dollar.new(15)).to eq(five.times(3))
    end
  end

  describe '#equals' do
    it 'can test equality' do
      expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
      expect(Dollar.new(5).equals(Dollar.new(6))).to be_falsy
    end
  end
end
