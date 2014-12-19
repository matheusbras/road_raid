# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game
  SCREEN_START = 0
  SCREEN_END = 4
  MOVEMENT_SPEED = 1
  CAR = 'A'
  ROAD = ' '

  MAP =["     ",
        "     ",
        "     ",
        "     "]

  def initialize
    @car_line = [ROAD, ROAD, CAR, ROAD, ROAD]
    @car_position = 2
    @screen = MAP
  end

  def screen
    @screen[SCREEN_END] = @car_line.join
    @screen.join("\n")
  end

  def move_left
    @car_line[@car_position] = ROAD
    @car_position -= MOVEMENT_SPEED
    @car_line[@car_position] = CAR
  end

  def move_right
    @car_line[@car_position] = ROAD
    @car_position += MOVEMENT_SPEED if @car_position < SCREEN_END
    @car_line[@car_position] = CAR
  end
end


