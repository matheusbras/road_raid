# encoding: UTF-8

require "./game"
require 'timeout'

def start
  @game = Game.new
  loop do
    process_frame
  end
end

def update_car_position
  char = read_with_timeout
  case char
    when "d" then @game.move_right
    when "a" then @game.move_left
  end
end

def read_with_timeout
  Timeout::timeout(0.5) do
    input = read_key
    if input == 'q'
      exit
    end
    return input
  end
rescue Timeout::Error
  process_frame
end

def read_key
  begin
    str = STDIN.getch
  ensure
  end
  str.chr
end

def process_frame
  clear
  @game.pass
  puts @game.screen
  update_car_position
  # sleep 0.3
end

def clear
  80.times { puts }
  puts 'Road Raid 4TW'
end

start
