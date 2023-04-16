# frozen_string_literal: true

require 'pry-byebug'

# class to create knight objects
class Knight
  attr_reader :movement

  def initialize
    @movement = [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1]]
  end
end
