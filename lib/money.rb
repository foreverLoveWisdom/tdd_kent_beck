# frozen_string_literal: true

require 'pry-byebug'

class Money
  def initialize(amount)
    @amount = amount
  end

  def times(another_number)
    Money.new(amount * another_number)
  end

  def ==(other)
    money = Money.new(other)
    amount == money.send(:amount)
  end

  alias equals ==

  private

  attr_reader :amount
end
