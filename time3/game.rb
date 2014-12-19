# encoding: UTF-8
require './car'

def read_char
  begin
    system("stty raw -echo")
    str = STDIN.getc
  ensure
    system("stty -raw echo")
  end
  str.chr
end

def process_scenario
  elem = $map.pop
  $map.unshift elem
end

def screen()
  text = "\e[H\e[2J\n"
  text += "Score: #{$score}\n"
  car_area = "|                    |".split("")
  car_area[@car.position] = @car.image
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

def load_car
  @car = Car.new
end

def start
  load_car
  
  loop do
    screen()
    process_scenario
    change_car_position
    $score += 10
    sleep 0.3
  end
end
