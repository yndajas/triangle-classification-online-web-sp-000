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
      # raise type error
    elsif @a == @b && @b == @c
      type = :equilateral
    elsif 
      
    else
  end
end
