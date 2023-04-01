# frozen_string_literal: true

require './lib/knight'

# class to create chessboard object
class ChessBoard
  attr_reader :board, :piece

  def initialize
    @board = Array.new(8) { Array.new(8) }
    @piece = Knight.new
  end
end
