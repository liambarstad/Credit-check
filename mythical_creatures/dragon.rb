class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = 3
  end

  def eat
    @hungry -= 1
  end

  def hungry?
    if @hungry > 0
      true
    else
      false
    end
  end
end
