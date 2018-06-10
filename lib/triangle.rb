class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a != @b && @a != @c && @b != @c
      :scalene
    elsif ((@a == @c || @b == @c) && @a != @b) ||
          ((@a == @b || @a == @c) && @b != @c)
      :isosceles
    elsif @a == @b && @a == @c && @b == @c
      :equilateral
    elsif !(@a > 0 && @b > 0 && @c > 0) ||
      !((@a + @b > @c) || (@a + @c > @b) || (@b + @c > @a))
      # begin
        raise TriangleError

      # end
    end
  end

  class TriangleError < StandardError

  end
end
