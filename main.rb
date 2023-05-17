# frozen_string_literal: true

require './lib/chess'

chess = Chess.new
p chess.knight.move([0, 0], [7, 3])
p chess.knight.move([5, 4], [7, 1])
p chess.knight.move([1, 4], [7, 7])
