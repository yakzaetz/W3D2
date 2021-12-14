require_relative "game.rb"
require_relative "card.rb"
require "byebug"


class Board
    attr_reader :size
    def initialize(n) #n = n*n
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n * n
        @shuffled_array = Card.assign_value(n)
    end

    def populate 
        
        (0...@grid.length).each do |row| 
            (0...@grid.length).each do |col|
                @grid[row][col] = Card.new(@shuffled_array.pop)
            end
        end
    end
end