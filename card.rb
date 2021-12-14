require_relative "game.rb"
require_relative "board.rb"


class Card

    def self.assign_value
        random_letter = (("a".."z").to_a.sample.upcase)
        pair = random_letter * 2
    end

    def initialize(value, face_down)
        @value = Card.assign_value
        @position = face_down
        @pairs = []
    end

end

if board[][].empty?
card = Card.assign_value.split("")
rand_row = rand(0...board.length)
rand_col = rand(0...board.length)
pos = rand_row, rand_col
card.each do |c|
    @board.[](pos, c)
        self[pos] = c
    end 
