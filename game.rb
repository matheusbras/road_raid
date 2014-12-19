# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game
  SCREEN_START = 0
  SCREEN_END = 4
  MOVEMENT_SPEED = 1
  CAR = 'A'
  BACKGROUND = ' '

  MAP =["     ",
        "     ",
        "     ",
        "     "]

  def initialize
    @car_line = [BACKGROUND, BACKGROUND, CAR, BACKGROUND, BACKGROUND]
    @car_position = 2
    @screen = MAP
  end

  def screen
    @screen[SCREEN_END] = @car_line.join
    @screen.join("\n")
  end

  def move_left
    @car_line[@car_position] = BACKGROUND
    @car_position -= MOVEMENT_SPEED
    @car_line[@car_position] = CAR
  end

  def move_right
    @car_line[@car_position] = BACKGROUND
    @car_position += MOVEMENT_SPEED if @car_position < SCREEN_END
    @car_line[@car_position] = CAR
  end
end


