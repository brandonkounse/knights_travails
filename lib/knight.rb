# frozen_string_literal: true

require 'pry-byebug'

# class to create knight objects
class Knight
  attr_reader :movement

  def initialize
    @movement = [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1]]
  end

  def move(current_pos, destination_pos)
    bfs(current_pos, destination_pos)
  end

  private

  def bfs(start_pos, destination_pos)
    queue = [[start_pos]]
    visited = [start_pos]

    until queue.empty?
      current_path = queue.shift
      current_pos = current_path.last

      return current_path if current_pos == destination_pos

      calculate_new_pos(current_pos).each do |new_pos|
        next if visited.include?(new_pos)

        new_path = current_path + [new_pos]
        queue << new_path
        visited << new_pos
      end
    end
  end

  def calculate_new_pos(current_pos, possible_moves = [])
    @movement.each do |mv|
      new_pos = [(current_pos[0] + mv[0]), (current_pos[1] + mv[1])]
      possible_moves << new_pos if inside_board?(new_pos)
    end
    possible_moves
  end

  def inside_board?(board_space)
    return false if board_space.any? { |space| space.negative? || space > 7 }

    true
  end
end
