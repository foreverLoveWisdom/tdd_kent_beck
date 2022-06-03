# frozen_string_literal: true

require_relative '../lib/franc'

RSpec.describe 'Multiplication' do
  describe '#equals' do
    it 'can test equality' do
      expect(Franc.new(5).equals(5)).to be_truthy
      expect(Franc.new(5).equals(6)).to be_falsy
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
