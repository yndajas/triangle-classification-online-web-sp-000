class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    type = ""
    
    if @a == 0 || @b == 0 || @c == 0 || @a + @b < @c || @a + @c < @b || @b + @c < @a
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @a == @b && @b == @c
      type = :equilateral
    elsif @a != @b && @b != @c && @a != @c
      type = :scalene
    else
      type = :isosceles
    end
    type
  end
  
  class TriangleError < StandardError
    def message
      "this is not a valid triangle"
    end
  end
end
