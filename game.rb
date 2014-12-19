# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game
  SCREEN_START = 0
  SCREEN_END = 4
  MOVEMENT_SPEED = 1
  CAR = 'A'
  ROAD = ' '
  BORDER = "|   |"
  NO_BORDER = "     "

  MAP =["     ",
        "     ",
        "     ",
        "     "]

  def initialize
    @car_line = [ROAD, ROAD, CAR, ROAD, ROAD]
    @car_position = 2
    @border_position = 0
    @screen = MAP
  end

  def screen
    @screen[SCREEN_END] = @car_line.join
    @screen.join("\n")
  end

  def move_left
    move do
      @car_position -= MOVEMENT_SPEED
    end
  end

  def move_right
    move do
      @car_position += MOVEMENT_SPEED if @car_position < SCREEN_END
    end
  end

  def pass
    @screen[@border_position-1] = NO_BORDER
    @screen[@border_position] = BORDER
    @border_position += 1
  end

  private

    def move(&block)
      @car_line[@car_position] = ROAD
      block.call
      @car_line[@car_position] = CAR
    end
end


