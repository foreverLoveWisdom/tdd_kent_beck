# frozen_string_literal: true

require_relative '../lib/dollar'

RSpec.describe Dollar do
  describe '#equals' do
    it 'can test equality' do
      expect(Dollar.new(5).equals(Dollar.new(5))).to be_truthy
      expect(Dollar.new(5).equals(Dollar.new(6))).to be_falsy
    end
  end

  describe '#times' do
    it 'can multiply continuously with the same amount' do
      five = Dollar.new(5)
      expect(Dollar.new(10)).to eq(five.times(2))

      expect(Dollar.new(15)).to eq(five.times(3))
    end
  end
end
