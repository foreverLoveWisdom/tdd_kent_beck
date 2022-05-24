# frozen_string_literal: true

require_relative './money'

class Dollar < Money
  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    Dollar.new(amount * another_number)
  end

  def ==(other)
    amount == other.send(:amount)
  end

  alias equals ==

  private

  attr_reader :amount
end
