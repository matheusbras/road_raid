# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game

  MAP =["     ",
        "     ",
        "     ",
        "     "]

  def initialize
    @car = [' ', ' ', 'A', ' ', ' ']
  end

  def screen
    screen = MAP
    screen[4] = @car.join
    screen.join("\n")
  end

  def move_left
    @car.delete_at(0)
    @car << ' '
  end

  def move_right
    @car.delete_at(4)
    @car[0] = ' '
  end
end


