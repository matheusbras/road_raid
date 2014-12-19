# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game
  SCREEN_START = 0
  SCREEN_END = 4
  MOVEMENT_SPEED = 1
  CAR = 'A'

  MAP =["     ",
        "     ",
        "     ",
        "     "]

  def initialize
    @car = [' ', ' ', CAR, ' ', ' ']
    @car_position = 2
    @screen = MAP
  end

  def screen
    @screen[SCREEN_END] = @car.join
    @screen.join("\n")
  end

  def move_left
    @car[@car_position] = ' '
    @car_position -= MOVEMENT_SPEED
    @car[@car_position] = CAR
  end

  def move_right
    @car[@car_position] = ' '
    @car_position += MOVEMENT_SPEED if @car_position < SCREEN_END
    @car[@car_position] = CAR
  end
end


