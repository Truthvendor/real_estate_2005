class Room
  attr_reader :length,
              :category

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @is_painted = false
  end

  def area
    @length * @width.to_i
  end

  def is_painted
    @is_painted
  end

  def painted
    @is_painted = true
  end
end
