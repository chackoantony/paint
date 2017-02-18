# Paint utility class
class Paint
  def initialize(image)
    @image = image
  end

  def flood_fill(x, y, color)
    return @image unless @image[x] && @image[y]
    return @image if @image[x][y] == color
    @image[x][y] = color
    flood_fill(x + 1, y, color)
    flood_fill(x - 1, y, color)
    flood_fill(x, y + 1, color)
    flood_fill(x, y - 1, color)
  end
end
