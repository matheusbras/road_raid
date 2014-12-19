class Car
  attr_accessor :position, :image
  
  def initialize(position = 12)
    @position = position
    @image = "H"
  end
  
  def action(input)
    if input == 'a' && position > 0
      @position -= 1
    elsif input == 'd' && position < 21
      @position += 1
    end
  end
end