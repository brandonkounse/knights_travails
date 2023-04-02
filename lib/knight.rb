# frozen_string_literal: true

# class to create knight objects
class Knight
  attr_reader :movement

  def initialize; end

  def move(pos_from = [0, 0], pos_to = [0, 0])
    # makes sure destination is within board space
    destination_valid?(pos_to)

    return if pos_from == pos_to

  end

  def destination_valid?(pos_to = [])
    raise ArgumentError, "#{pos_to} is invalid square" if pos_to.any? { |ele| ele.negative? || ele > 7 }

    true
  end
end
