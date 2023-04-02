# frozen_string_literal: true

require_relative 'knight'

# class to create chessboard object
class Chess
  attr_reader :board, :knight

  def initialize
    @board = Array.new(8) { Array.new(8) { |i| i } }
    @knight = Knight.new
  end
end
