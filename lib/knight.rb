# frozen_string_literal: true

# class to create knight objects
class Knight
  attr_reader :movement

  def initialize; end

  # method to move knight forward 2 and 1 to the side
  def move(pos_from = [0, 0], pos_to = [0, 0])
    # break apart both indices and add or subtract movement to determine new space
    move_valid?(pos_to)
  end

  def move_valid?(pos_to = [])
    raise ArgumentError, "#{pos_to} is invalid square" if pos_to.any? { |ele| ele.negative? || ele > 7 }

    true
  end
end
