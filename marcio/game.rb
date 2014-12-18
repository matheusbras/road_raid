# encoding: UTF-8

require 'io/console'
 
def read_char
  STDIN.echo = false
  STDIN.raw!
 
  input = STDIN.getc.chr
  if input == "\e" then
    input << STDIN.read_nonblock(3) rescue nil
    input << STDIN.read_nonblock(2) rescue nil
  end
ensure
  STDIN.echo = true
  STDIN.cooked!
 
  return input
end

def show_single_key
  c = read_char
 
  case c
  when "\e[C"
    return :right
  when "\e[D"
    return :left
  end
end

def screen()
  puts "\e[H\e[2J"
  puts "Score: 10"
  car_area = 20.times.map { "=" }
  car_area[$col] = "A"
  puts car_area.join("")
end

def change_car_position
  $key = show_single_key
  if $key == :right
    $col += 1
  elsif $key == :left
    $col -= 1
  end
end

$key = nil
$col = 10 

loop do
  screen()
  $key = nil
  change_car_position
  sleep 0.3
end

