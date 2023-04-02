# frozen_string_literal: true

# class to create knight objects
class Knight
  attr_reader :movement

  def initialize
    @movement = []
  end

  def move(pos_from = [0, 0], pos_to = [0, 0])
    return if pos_from == pos_to
  end

  def move_valid?(pos_to = [])
    if pos_to.any? { |ele| ele.negative? || ele > 7 }
      false
    else
      true
    end
  end
end
