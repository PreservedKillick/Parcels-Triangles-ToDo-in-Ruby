class Parcel
  def initialize(weight, length, height, width)
    @weight = weight
    @length = length
    @height = height
    @width = width
  end
  def volume
    @length * @height * @width
  end
  def cost_to_ship
    (volume + @weight) * 2.5
  end
end

# x = Parcel.new(3, 1, 2, 3)
# p x.volume
# p x.cost_to_ship
