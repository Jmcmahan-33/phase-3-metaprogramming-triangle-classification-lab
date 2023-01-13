class Triangle
  attr_accessor :aug1, :aug2, :aug3
  def initialize(aug1, aug2, aug3)
    @aug1 = aug1
    @aug2 = aug2
    @aug3 = aug3
  end
  def kind
    validate_triangle
    if aug1 == aug2 && aug2 == aug3
        :equilateral
    elsif aug3 == aug2 || aug1 == aug3 || aug1 == aug2 
      :isosceles
    else
      :scalene
    end
  end

  def sides_greater_than_zero?
    [aug1, aug2, aug3].all?(&:positive?)
  end

  def valid_triangle_inequality?
    aug1 + aug2 > aug3 && aug1 + aug3 > aug2 && aug2 + aug3 > aug1
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
  end

  class TriangleError < StandardError
    # triangle error code
  end

end



# Write a Triangle class that accepts three arguments on initialization. 
# Each argument is a length of one of the three sides of the triangle.

   # isosceles 
        # else when no sides are equal
          # scalene