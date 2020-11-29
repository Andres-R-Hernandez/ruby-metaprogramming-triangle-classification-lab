class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind
    if (self.side1 + self.side2) <= self.side3 || (self.side2 + self.side3) <= self.side1 || (self.side3 + self.side1) <= self.side2 || self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      begin
        raise TriangleError
      end
    elsif self.side1 == self.side2 && self.side1 == self.side3
      :equilateral
    elsif (self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3) && (self.side1 != self.side2 || self.side1 != self.side3 || self.side2 != self.side3)
      :isosceles
    elsif self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
      :scalene
    end
  end


  class TriangleError < StandardError
    "This is not a triangle! Please correct the side lengths."
  end

end
