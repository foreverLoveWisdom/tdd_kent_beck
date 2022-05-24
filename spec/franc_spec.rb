# frozen_string_literal: true

class Franc
  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    Franc.new(amount * another_number)
  end

  def ==(other)
    amount == other.send(:amount)
  end

  alias equals ==

  private

  attr_reader :amount
end

RSpec.describe 'Multiplication' do
  describe '#equals' do
    it 'can test equality' do
      expect(Franc.new(5).equals(Franc.new(5))).to be_truthy
      expect(Franc.new(5).equals(Franc.new(6))).to be_falsy
    end
  end

  describe '#times' do
    it 'can multiply continuously with the same amount' do
      five = Franc.new(5)
      expect(Franc.new(10)).to eq(five.times(2))

      expect(Franc.new(15)).to eq(five.times(3))
    end
  end
end
