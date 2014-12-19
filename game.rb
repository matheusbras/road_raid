# encoding: UTF-8
require 'io/console'
require 'timeout'
require './car'

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

def process_scenario
  elem = $map.pop
  $map.unshift elem
end

def screen()
  text = "\e[H\e[2J\n"
  text += "Score: #{$score}\n"
  car_area = "|                    |".split("")
  car_area[@car.position] = "A"
  text += $map.join("\n")
  text += "\n" + car_area.join("")
  puts text
end

def change_car_position
  @car.action(read_char)
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

$score = 0
@car = Car.new

def start(limit = Float::INFINITY)
  
  i = 0
  while i < limit do
    screen()
    process_scenario
    change_car_position
    $score += 10
    sleep 0.3
    i +=1
  end
end
