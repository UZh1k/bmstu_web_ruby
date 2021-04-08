class Board
	attr_reader :length, :width

	def initialize(length, width)
		@length = length
	    @width = width
    end

    def area
    	length * width
    end

end

class Box < Board
	attr_reader :height

	def initialize(length, width, height)
    	super length, width
		@height = height
    end

    def volume
    	area * height
    end

    def output
    	puts 'Длина - ' + length.to_s
    	puts 'Ширина - ' + width.to_s
    	puts 'Высота - ' + height.to_s
    	puts 'Объем - ' + volume.to_s
	end
end