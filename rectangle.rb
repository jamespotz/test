class Rectangle
  def initialize(width, length)
    @width = width
    @length = length
  end

  def area
    @width * @length
  end
end

print "Rectangle Width ? > "
width = gets.to_f
print "Rectangle Length ? > "
length = gets.to_f

area_of_rectangle = Rectangle.new(width, length)
puts "The area of the rectangle is #{area_of_rectangle.area}"
