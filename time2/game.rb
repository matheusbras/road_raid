# encoding: UTF-8
require 'io/console'
require 'timeout'

class Game

  def initialize
  end

  # Main
  def read_char
    Timeout::timeout(0.5) do
      input = STDIN.getch
      if input == 'q'
        exit
      end
      input
    end
    rescue Timeout::Error
      start
  end

  def show_single_key(read_char)
    c = read_char

    case c
    when "d"
      return :right
    when "a"
      return :left
    end
  end

  def process_scenario
    elem = $map.pop
    $map.unshift elem
  end

  def screen()
    text = "\e[H\e[2J\n"
    text += "Score: #{$score}\n"
    car_area = "|                    |".split("")
    car_area[$col] = "A"
    text += $map.join("\n")
    text += "\n" + car_area.join("")
    puts text
  end

  def change_car_position
    $key = show_single_key(read_char)
    if $key == :right && $col < 22
      $col += 1
    elsif $key == :left && $col > 0
      $col -= 1
    end
  end

  def call
    current_screen = screen()
    process_scenario
    change_car_position
    $key = nil
    $score += 10
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

  $key = nil
  $col = 12
  $score = 0

  # Main
  def start(limit = Float::INFINITY)
    i = 0
    while i < limit do
      print call
      sleep 0.3
      i +=1
    end
  end
end


