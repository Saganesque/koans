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

  if (a|b|c)<=0
    raise TriangleError, "Triangles must have sides greater than zero"
  end
  if ((a+b)<=c) || ((a+c)<=b) ||(b+c)<=a
     raise TriangleError, "Triangles must have 2 sides that add up to an amount greater than the third"
  end
  if (a==b) && (a==c) 
      :equilateral
     elsif (a==b)||(a==c)||(b==c)
      :isosceles
     else
     :scalene
  end
# Error class used in part 2.  No need to change this code.
  end
class TriangleError < StandardError

end
