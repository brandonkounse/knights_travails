# frozen_string_literal: true

# class to create chessboard object
class ChessBoard
  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end
end
