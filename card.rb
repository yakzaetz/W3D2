require_relative "game.rb"
require_relative "board.rb"


class Card  

    attr_reader 
    attr_writer :position

    def self.assign_value(n) #shuffle the array, return shuffled array
        array=[]
        while array.length < ( n * n )
            random_letter = (("a".."z").to_a.sample.upcase)
                if !array.include?(random_letter)
                    2.times do
                    array << random_letter
                    end
                end
        end 
        array.shuffle
    end

    def initialize(value)
        @value = value
        @hidden = true #boolean #hidden/revealed
        # @pairs = []
    end

    def hide
        @hidden = true

    end

    def reveal 
        @hidden = false
    end

    # def to_s

    # end 

    # def ==

    # end

end
# .shuffle on an array

# if board[][].empty?
# card = Card.assign_value.split("")

# rand_row = rand(0...board.length)
# rand_col = rand(0...board.length)
# pos = rand_row, rand_col
# card.each do |c|
#     @board.[](pos, c)
#         self[pos] = c
#     end 

