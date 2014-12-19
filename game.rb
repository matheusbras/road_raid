# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game

  def initialize
    key = key
    col = 12
    score = 0
  end

  def show_single_key
    case key
    when 'd'
      right
    when 'a'
      left
    end
  end

  def left
    :left
  end

  def right
    :right
  end

  def process_scenario
    elem = $map.pop
    $map.unshift elem
  end

  def screen
    ["     ",
     "     ",
     "     ",
     "     ",
     "  A  "].join("\n")
  end

  def change_car_position
    key = show_single_key
    if key == :right && col < 22
      col += 1
    elsif key == :left && col > 0
      col -= 1
    end
  end

  def call
    current_screen = screen()
    process_scenario
    change_car_position
    key = nil
    score += 10
    current_screen
  end

  $map = [
    "|                    |",
    "|                    |",
    "|                    |",
    "|                    |",
    "||                  ||",
    "|                    |",
    "|                    |",
    "|                    |",
    "|                    |",
    "||                  ||",
    "|                    |",
    "|                    |",
    "|                    |",
    "|                    |",
    "|                    |",
    "||                  ||",
    "|                    |",
    "|                    |",
    "|                    |",
    "||                  ||",
    "|                    |",
    "|                    |",
    "|                    |",
    "|                    |",
    "||                  ||",
    "|                    |",
    "|                    |",
    "|                    |",
    "||                  ||",
    "|                    |",
    "|                    |",
  ]


  private

    attr_reader :key, :col, :score
end


