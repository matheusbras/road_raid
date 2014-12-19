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
    @car_position = 2
    @screen = MAP
  end

  def screen
    @screen[4] = @car.join
    @screen.join("\n")
  end

  def move_left
    @car[@car_position] = ' '
    @car_position -= 1
    @car[@car_position] = 'A'
  end

  def move_right
    @car[@car_position] = ' '
    @car_position += 1 if @car_position < 4
    @car[@car_position] = 'A'
  end
end


