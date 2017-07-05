class Classroom
  attr_reader :width,
              :length,
              :height

  def initialize(width, length, height)
    @width = width
    @length = length
    @height = height
    @students = []
  end

  def area
    width * height
  end

  def volume
    width * height * length
  end

  def add_length(feet)
    @length += feet
  end
end
