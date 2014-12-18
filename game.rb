# encoding: UTF-8

def read_char
  begin
    system("stty raw -echo")
    str = STDIN.getc
  ensure
    system("stty -raw echo")
  end
  str.chr
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

def start
  loop do
    screen()
    process_scenario
    change_car_position
    $key = nil
    $score += 10
    sleep 0.3
  end
end
