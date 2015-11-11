class Circle
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * (@radius ** 2)
  end
end

print "What is the radius of the circle? > "
radius = gets.to_f

area_of_circle = Circle.new(radius)
puts "The area of the circle is #{area_of_circle.area}"
