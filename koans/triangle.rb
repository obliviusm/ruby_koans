# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  if a <= 0 || b <= 0 || c <=0
    raise TriangleError, "at least one side <= 0" 
  elsif [a, b, c].sort.last >= [a, b, c].sort[0..1].reduce(:+)
    raise TriangleError, "sum of two sides shoter than the biggest side"
  end
  
    if a.eql?(b) && b.eql?(c)
        :equilateral
    elsif a == b || a == c || b == c
        :isosceles
    else
        :scalene
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
