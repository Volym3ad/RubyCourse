Shoes.app do # for Shoes app
  @shape = star(points: 5)
  motion do |left, top|
    @shape.move left, top
  end
end
