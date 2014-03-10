class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def side1
    @side1
  end

  def side2
    @side2
  end

  def side3
    @side3
  end

  def type_of_triangle
    if triangle? == false
      "That is not a triangle!"
    else
      if @side1 == @side2 && @side1 == @side3
        "an equilateral triangle."
      elsif (@side1 == @side2 && @side2 != @side3) ||
            (@side1 == @side3 && @side3 != @side2) ||
            (@side2 == @side3 && @side3 != @side1)
        "an isosceles triangle."
      else
        "a scalene triangle."
      end
    end
  end

  def triangle?
    if (@side1 >= (@side2 + @side3)) ||
       (@side2 >= (@side1 + @side3)) ||
       (@side3 >= (@side2 + @side1))
      false
    else
      true
    end
  end
end

# x = Triangle.new(6,6,6)
# p x.type_of_triangle
