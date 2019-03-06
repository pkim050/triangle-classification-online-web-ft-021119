class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :scalene #equilateral = all same sides. isosceles = two of same side. scalene = all different sides.
  
  def initialize(one, two, three)
    if one > 0 && two && 0 && three > 0
      if (one + two) > three && (one + three) > two && (two + three) > one
        return :equilateral if one == two && one == three
        return :isosceles if one == two && one != three || one == three && one != two || two == three && two != one
        return :scalene if one != two && one != three && two != three
      end
    end
    raise TriangleError
    rescue TriangleError
      puts error.message
  end
  
  class TriangleError < StandardError
    def message
      "Triangle Error!"
    end
  end
end
