class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3 

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end


  def kind
    validate_triangle
    if length_1 == length_2 && length_2 == length_3
      :equilateral

     elsif length_1 == length_2 || length_2 == length_3 || length_1 == length_3
      :isosceles
    else
      :scalene
    end
  end

   def validate_triangle
    real_triangle = [(length_1 + length_2 > length_3), (length_1 + length_3 > length_2), (length_2 + length_3 > length_1)]
    [length_1, length_2, length_3].each do |side|
      real_triangle << false if side <= 0
    raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end
end 

